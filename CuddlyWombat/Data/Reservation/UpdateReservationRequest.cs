using CuddlyWombat.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuddlyWombat.Data
{
    public class UpdateReservationRequest
    {
        public int ReservationID { get; set; }
        public int ReservationStatusID { get; set; }
    }
}