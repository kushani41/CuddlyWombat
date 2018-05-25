using CuddlyWombat.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuddlyWombat.Data
{
    public class UpdateOrderRequest
    {
        public int OrderID { get; set; }
        public int OrderStatusID { get; set; }
    }
}