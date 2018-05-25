using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Mvc;

namespace CuddlyWombat.Controllers
{
    public class ReservationController : Controller
    {
        // GET: Reservation
        public ActionResult Index()
        {
            ClaimsIdentity identity = (ClaimsIdentity)User.Identity;
            var isInternalUser = identity.Claims.Where(x => x.Type == "IsInternalUser").First().Value;
            int userID = Int32.Parse(identity.Claims.Where(x => x.Type == "UserID").First().Value);

            ViewBag.UserID = userID;
            ViewBag.IsInternalUser = isInternalUser.ToLower();

            return View();
        }
    }
}