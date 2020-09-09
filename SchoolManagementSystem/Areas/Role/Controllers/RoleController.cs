using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using SchoolManagementSystem.ApplicationDbContext;

namespace SchoolManagementSystem.Areas.Role.Controllers
{
    [Area("Role")]
    public class RoleController : Controller
    {
        private readonly DataContext db;
        public RoleController(DataContext context)
        {
            db = context;
        }
        public IActionResult Index()
        {
            //var i = db.Role.FirstOrDefault();
            return View();
        }
    }
}