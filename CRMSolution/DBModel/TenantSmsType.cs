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
    
    public partial class TenantSmsType
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TenantSmsType()
        {
            this.TenantSMSSchedules = new HashSet<TenantSMSSchedule>();
        }
    
        public long Id { get; set; }
        public long TenantId { get; set; }
        public string TypeName { get; set; }
        public string MessageText { get; set; }
        public string SprocName { get; set; }
        public bool IsActive { get; set; }
        public string SmsProcessClass { get; set; }
        public string PlaceHolders { get; set; }
    
        public virtual Tenant Tenant { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TenantSMSSchedule> TenantSMSSchedules { get; set; }
    }
}
