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
    
    public partial class ExpenseItemImage
    {
        public int Id { get; set; }
        public int ExpenseItemId { get; set; }
        public Nullable<int> ImageId { get; set; }
        public int SequenceNumber { get; set; }
    
        public virtual ExpenseItem ExpenseItem { get; set; }
        public virtual Image Image { get; set; }
    }
}
