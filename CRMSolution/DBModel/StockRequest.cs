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
    
    public partial class StockRequest
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public StockRequest()
        {
            this.StockRequestFulfills = new HashSet<StockRequestFulfill>();
        }
    
        public long Id { get; set; }
        public long StockRequestTagId { get; set; }
        public long ItemMasterId { get; set; }
        public int Quantity { get; set; }
        public long CyclicCount { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public System.DateTime DateCreated { get; set; }
        public System.DateTime DateUpdated { get; set; }
        public string Status { get; set; }
        public int QuantityIssued { get; set; }
        public Nullable<System.DateTime> IssueDate { get; set; }
        public long StockLedgerId { get; set; }
        public string ReviewNotes { get; set; }
    
        public virtual StockRequestTag StockRequestTag { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StockRequestFulfill> StockRequestFulfills { get; set; }
        public virtual ItemMaster ItemMaster { get; set; }
    }
}
