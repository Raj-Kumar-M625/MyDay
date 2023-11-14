//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DBModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class DWSPaymentReference
    {
        public long Id { get; set; }
        public string PaymentReference { get; set; }
        public string Comments { get; set; }
        public decimal TotalNetPayable { get; set; }
        public long DWSCount { get; set; }
        public string DWSNumbers { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public System.DateTime DateCreated { get; set; }
        public System.DateTime DateUpdated { get; set; }
        public string AccountNumber { get; set; }
        public string AccountName { get; set; }
        public string AccountAddress { get; set; }
        public string AccountEmail { get; set; }
        public string PaymentType { get; set; }
        public string SenderInfo { get; set; }
        public System.DateTime LocalTimeStamp { get; set; }
    }
}