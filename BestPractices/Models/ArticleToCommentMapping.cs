//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BestPractices.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ArticleToCommentMapping
    {
        public System.Guid Id { get; set; }
        public int ArticleId { get; set; }
        public int CommentId { get; set; }
    }
}
