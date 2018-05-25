using CuddlyWombat.CustomLibraries;
using CuddlyWombat.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Mvc;

namespace CuddlyWombat.Controllers
{
    [AllowAnonymous]
    public class AuthController : Controller
    {
        // GET: Auth
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        // GET: Auth
        [HttpGet]
        public ActionResult Registration()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(Login model)
        {
            var isInternalUser = false;

            try
            {
                if (!ModelState.IsValid) //Checks if input fields have the correct format
                {
                    return View(model); //Returns the view with the input values so that the user doesn't have to retype again
                }


                using (var db = new CuddlyWombatEntities())
                {
                    var loggedInUser = (from u in db.Users
                                        where u.Email == model.Email
                                        select u).FirstOrDefault();

                    if (loggedInUser != null)
                    {
                        isInternalUser = true;
                        var decryptedPassword = CustomDecrypt.Decrypt(loggedInUser.Password);

                        if (decryptedPassword != model.Password)
                        {
                            ModelState.AddModelError("", "Invalid email or password");
                            return View(model);
                        }

                        var identity = new ClaimsIdentity(new[] {
                            new Claim("IsInternalUser", isInternalUser.ToString()),
                            new Claim("UserID", loggedInUser.UserID.ToString()),
                            new Claim(ClaimTypes.Name, loggedInUser.Name),
                            new Claim(ClaimTypes.Email, loggedInUser.Email) }, "ApplicationCookie");

                        var ctx = Request.GetOwinContext();
                        var authManager = ctx.Authentication;
                        authManager.SignIn(identity);

                        ViewBag.IsInternalUser = Convert.ToBoolean(isInternalUser.ToString());

                        return RedirectToAction("Index", "Home");
                    }
                    else
                    {
                        var loggedInCustomer = (from u in db.Customers
                                                where u.Email == model.Email
                                                select u).FirstOrDefault();

                        if (loggedInCustomer != null)
                        {
                            var decryptedPassword = CustomDecrypt.Decrypt(loggedInCustomer.Password);

                            if (decryptedPassword != model.Password)
                            {
                                ModelState.AddModelError("", "Invalid email or password");
                                return View(model);
                            }

                            var identity = new ClaimsIdentity(new[] {
                                new Claim("IsInternalUser", isInternalUser.ToString()),
                                new Claim("UserID", loggedInCustomer.CustomerID.ToString()),
                                new Claim(ClaimTypes.Name, loggedInCustomer.GivenName + " " + loggedInCustomer.Surname),
                                new Claim(ClaimTypes.Email, loggedInCustomer.Email) }, "ApplicationCookie");

                            var ctx = Request.GetOwinContext();
                            var authManager = ctx.Authentication;
                            authManager.SignIn(identity);

                            ViewBag.IsInternalUser = Convert.ToBoolean(isInternalUser.ToString());

                            return RedirectToAction("Index", "Home");
                        }
                        else
                        {
                            ModelState.AddModelError("", "Invalid email or password");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("Exception", ex.Message);
            }
            ViewBag.IsInternalUser = Convert.ToBoolean(isInternalUser.ToString());
            return View(model); //Should always be declared on the end of an action method
        }

        public ActionResult Logout()
        {
            try
            {
                var ctx = Request.GetOwinContext();
                var authManager = ctx.Authentication;

                authManager.SignOut("ApplicationCookie");
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("Exception", ex.Message);
            }
            return RedirectToAction("Login", "Auth");
        }

        [HttpPost]
        public ActionResult Registration(CustomerRegistration model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    using (var db = new CuddlyWombatEntities())
                    {
                        var existingUser = (from u in db.Users
                                            where u.Email == model.Email
                                            select u).FirstOrDefault();

                        if (existingUser != null)
                        {
                            ModelState.AddModelError("", "Existing Internal User.");
                            return View();
                        }
                        else
                        {
                            var existingCustomer = (from c in db.Customers
                                                    where c.Email == model.Email
                                                    select c).FirstOrDefault();

                            if (existingCustomer != null)
                            {
                                ModelState.AddModelError("", "Existing Customer.");
                                return View();
                            }
                        }

                        var encryptedPassword = CustomEnrypt.Encrypt(model.Password);
                        var customer = new Customer
                        {
                            Email = model.Email,
                            Password = encryptedPassword,
                            GivenName = model.GivenName,
                            Surname = model.Surname,
                            DateCreated = DateTime.Now
                        };
                        db.Customers.Add(customer);
                        db.SaveChanges();
                    }
                    return RedirectToAction("Login", "Auth");
                }
                else
                {
                    ModelState.AddModelError("", "One or more fields have been");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("Exception", ex.Message);
            }
            return View();
        }
    }
}