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
    
    public partial class Payment
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Payment()
        {
            this.PaymentImages = new HashSet<PaymentImage>();
        }
    
        public int Id { get; set; }
        public int PaymentModeId { get; set; }
        public int TrackingId { get; set; }
        public Nullable<int> CommentId { get; set; }
        public System.DateTime Date { get; set; }
        public decimal TotalAmount { get; set; }
    
        public virtual Comment Comment { get; set; }
        public virtual PaymentMode PaymentMode { get; set; }
        public virtual Tracking Tracking { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PaymentImage> PaymentImages { get; set; }
    }
}
