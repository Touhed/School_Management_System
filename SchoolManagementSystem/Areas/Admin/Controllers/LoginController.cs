using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using SchoolManagementSystem.ApplicationDbContext;

namespace SchoolManagementSystem.Areas.Admin.Controllers
{

    [Area("Admin")]
    public class LoginController : Controller
    {
        private readonly DataContext db;
        public LoginController(DataContext context)
        {
            db = context;
        }
        public IActionResult Index()
        {
            //var i = db.Login.FirstOrDefault();
            return View();
        }
    }
}