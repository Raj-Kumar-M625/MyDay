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
    
    public partial class CustomerQuestionnaire
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CustomerQuestionnaire()
        {
            this.Answers = new HashSet<Answer>();
        }
    
        public long Id { get; set; }
        public long EmployeeId { get; set; }
        public string CustomerCode { get; set; }
        public Nullable<long> QuestionPaperId { get; set; }
        public string QuestionPaperName { get; set; }
        public long ActivityId { get; set; }
        public System.DateTime DateCreated { get; set; }
        public System.DateTime DateUpdated { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public long SqliteQuestionnaireId { get; set; }
        public Nullable<System.DateTime> QuestionnaireDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Answer> Answers { get; set; }
        public virtual QuestionPaper QuestionPaper { get; set; }
    }
}
