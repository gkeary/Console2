﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Console2
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class D3Entities : DbContext
    {
        public D3Entities()
            : base("name=D3Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<CurrentDayPickup> CurrentDayPickups { get; set; }
        public DbSet<CurrentDayRoute> CurrentDayRoutes { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Driver> Drivers { get; set; }
        public DbSet<ArchivedPickup> ArchivedPickups { get; set; }
        public DbSet<Pickup> Pickups { get; set; }
        public DbSet<PostedMessage> PostedMessages { get; set; }
        public DbSet<Route> Routes { get; set; }
    }
}