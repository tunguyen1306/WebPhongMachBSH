﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebMVCPhongMach.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class XBMuabannhadatbackup_cuaTuEntities : DbContext
    {
        public XBMuabannhadatbackup_cuaTuEntities()
            : base("name=XBMuabannhadatbackup_cuaTuEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tbl_menu_PM> tbl_menu_PM { get; set; }
        public virtual DbSet<tbl_new_PM> tbl_new_PM { get; set; }
        public virtual DbSet<tbl_silde_PM> tbl_silde_PM { get; set; }
        public virtual DbSet<tbl_type_new_PM> tbl_type_new_PM { get; set; }
       public virtual DbSet<tbl_Email> tbl_Email { get; set; }
    }
}
