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
    
    public partial class EntitySurvey
    {
        public long Id { get; set; }
        public long EntityId { get; set; }
        public long WorkflowSeasonId { get; set; }
        public string SurveyNumber { get; set; }
        public string MajorCrop { get; set; }
        public string LastCrop { get; set; }
        public string WaterSource { get; set; }
        public string SoilType { get; set; }
        public System.DateTime SowingDate { get; set; }
        public decimal LandSizeInAcres { get; set; }
        public string Status { get; set; }
        public long ActivityId { get; set; }
        public System.DateTime DateCreated { get; set; }
        public System.DateTime DateUpdated { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
    
        public virtual WorkflowSeason WorkflowSeason { get; set; }
        public virtual Entity Entity { get; set; }
    }
}
