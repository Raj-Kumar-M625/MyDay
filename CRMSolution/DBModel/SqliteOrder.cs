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
    
    public partial class SqliteOrder
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SqliteOrder()
        {
            this.SqliteOrderItems = new HashSet<SqliteOrderItem>();
            this.SqliteOrderImages = new HashSet<SqliteOrderImage>();
        }
    
        public long Id { get; set; }
        public long BatchId { get; set; }
        public long EmployeeId { get; set; }
        public string CustomerCode { get; set; }
        public string OrderType { get; set; }
        public System.DateTime OrderDate { get; set; }
        public decimal TotalAmount { get; set; }
        public long ItemCount { get; set; }
        public System.DateTime DateCreated { get; set; }
        public System.DateTime DateUpdated { get; set; }
        public bool IsProcessed { get; set; }
        public long OrderId { get; set; }
        public string PhoneDbId { get; set; }
        public string PhoneActivityId { get; set; }
        public decimal TotalGST { get; set; }
        public decimal NetAmount { get; set; }
        public decimal MaxDiscountPercentage { get; set; }
        public string DiscountType { get; set; }
        public decimal AppliedDiscountPercentage { get; set; }
        public int ImageCount { get; set; }
    
        public virtual SqliteActionBatch SqliteActionBatch { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SqliteOrderItem> SqliteOrderItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SqliteOrderImage> SqliteOrderImages { get; set; }
    }
}