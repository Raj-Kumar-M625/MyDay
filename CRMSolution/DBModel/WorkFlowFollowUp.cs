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
    
    public partial class WorkFlowFollowUp
    {
        public long Id { get; set; }
        public string TypeName { get; set; }
        public string Phase { get; set; }
        public string PhoneDataEntryPage { get; set; }
        public string FollowUpPhaseTag { get; set; }
        public int MinFollowUps { get; set; }
        public int MaxFollowUps { get; set; }
        public int TargetStartAtDay { get; set; }
        public int TargetEndAtDay { get; set; }
        public bool IsActive { get; set; }
        public int MaxDWS { get; set; }
    }
}
