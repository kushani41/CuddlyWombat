//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CuddlyWombat.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reservation
    {
        public int ReservationID { get; set; }
        public int CustomerID { get; set; }
        public int NumberOfTables { get; set; }
        public System.DateTime ReservationDate { get; set; }
        public int ReservationStatusID { get; set; }
        public System.DateTime DateCreated { get; set; }
        public Nullable<System.DateTime> DateModified { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual ReservationStatu ReservationStatu { get; set; }
    }
}
