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
    
    public partial class WorkFlowSchedule
    {
        public long Id { get; set; }
        public string TypeName { get; set; }
        public int Sequence { get; set; }
        public string TagName { get; set; }
        public string Phase { get; set; }
        public int TargetStartAtDay { get; set; }
        public int TargetEndAtDay { get; set; }
        public bool IsActive { get; set; }
    }
}
