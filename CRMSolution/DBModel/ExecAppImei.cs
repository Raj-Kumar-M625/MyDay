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
    
    public partial class ExecAppImei
    {
        public long Id { get; set; }
        public string IMEINumber { get; set; }
        public string Comment { get; set; }
        public System.DateTime EffectiveDate { get; set; }
        public System.DateTime ExpiryDate { get; set; }
        public bool IsSupportPerson { get; set; }
        public bool EnableLog { get; set; }
        public int ExecAppDetailLevel { get; set; }
    }
}
