using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace SchoolManagementSystem.Areas.Admin.Models
{
    [Table("Login")]
    public class Login
    {
        [Key]
        public Int64 SerialNo { get; set; }
        public String Username  { get; set; } 
        public String Password { get; set; }
        public String CurrentPassword { get; set; }
        public bool FirstLoginStatus { get; set; }
        public bool ActiveStatus { get; set; }
        public int RoleId { get; set; }
        public Int64 DistinguishId { get; set; }
        
    }
}
