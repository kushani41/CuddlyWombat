using CuddlyWombat.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuddlyWombat.Data
{
    public class GetOrderDetailsResponse : BaseResponse
    {
        public List<Order> Orders { get; set; }
        public List<MenuItem> MenuItems { get; set; }
    }
}