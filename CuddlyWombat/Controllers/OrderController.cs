﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CuddlyWombat.Controllers
{
    public class OrderController : Controller
    {
        // GET: Order
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult InHouseOrder()
        {
            return View();
        }

        public ActionResult CustomerOrderDetails()
        {
            return View();
        }

        public ActionResult KitchenOrderDetails()
        {
            return View();
        }
    }
}
