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
    
    public partial class TenantWorkDay
    {
        public int Id { get; set; }
        public long TenantId { get; set; }
        public string WeekDayName { get; set; }
        public bool IsWorkingDay { get; set; }
    
        public virtual Tenant Tenant { get; set; }
    }
}
