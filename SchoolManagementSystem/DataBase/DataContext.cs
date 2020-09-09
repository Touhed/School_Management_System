using Microsoft.EntityFrameworkCore;
using SchoolManagementSystem.Areas.Admin.Models;
using SchoolManagementSystem.Areas.Role.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SchoolManagementSystem.ApplicationDbContext
{
    public class DataContext:DbContext
    {
        public DataContext(DbContextOptions<DataContext> options):base(options)
        {

        }
        public DbSet<Login> Login { get; set; }
        public DbSet<Role> Role { get; set; }

    }
}
