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
    
    public partial class GetTrackingRecordsForDistanceCalculation_Result
    {
        public long Id { get; set; }
        public decimal BeginGPSLatitude { get; set; }
        public decimal BeginGPSLongitude { get; set; }
        public decimal EndGPSLatitude { get; set; }
        public decimal EndGPSLongitude { get; set; }
        public bool IsMilestone { get; set; }
        public bool IsStartOfDay { get; set; }
        public bool IsEndOfDay { get; set; }
    }
}
