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
    
    public partial class OrderHistory
    {
        public int OrderHistoryID { get; set; }
        public int OrderID { get; set; }
        public Nullable<int> TableID { get; set; }
        public Nullable<int> CustomerID { get; set; }
        public int OrderTypeID { get; set; }
        public int OrderStatusID { get; set; }
        public decimal TotalPrice { get; set; }
        public Nullable<System.DateTime> PickUpTime { get; set; }
        public bool IsPaid { get; set; }
        public System.DateTime DateCreated { get; set; }
        public Nullable<System.DateTime> DateModified { get; set; }
        public Nullable<int> TotalPreparationTimeInMinutes { get; set; }
    }
}
