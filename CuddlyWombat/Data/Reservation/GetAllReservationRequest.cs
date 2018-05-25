using CuddlyWombat.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuddlyWombat.Data
{
    public class GetAllReservationRequest
    {
        public bool IsInternalUser { get; set; }
        public int UserID { get; set; }
    }
}