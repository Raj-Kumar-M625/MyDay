//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TestConApp
{
    using System;
    using System.Collections.Generic;
    
    public partial class Activity
    {
        public int Id { get; set; }
        public Nullable<int> CustomerId { get; set; }
        public Nullable<int> FarmerId { get; set; }
        public Nullable<int> RetailerId { get; set; }
        public int TrackingId { get; set; }
        public int CommentId { get; set; }
        public System.DateTime Date { get; set; }
    
        public virtual Comment Comment { get; set; }
        public virtual Customer Customer { get; set; }
        public virtual Farmer Farmer { get; set; }
        public virtual Retailer Retailer { get; set; }
        public virtual Tracking Tracking { get; set; }
    }
}
