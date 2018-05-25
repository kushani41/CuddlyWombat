using CuddlyWombat.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuddlyWombat.Data
{
    public class SaveOrderRequest
    {
        public Order Order { get; set; }
        public List<OrderMenuItem> OrderMenuItems { get; set; }
    }
}