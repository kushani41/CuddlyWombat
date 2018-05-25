using CuddlyWombat.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuddlyWombat.Data
{
    public class GetAllReservationResponse : BaseResponse
    {
        public List<Reservation> Reservations { get; set; }
        public int AverageCapacityOfTable { get; set; }
    }
}