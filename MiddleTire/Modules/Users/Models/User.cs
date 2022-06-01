using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiddleTire.Modules.Users.Models
{
    public class User
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }
        public string Address { get; set; }
        public string UploadPhoto { get; set; }
        public int Gender { get; set; }
        public string DOB { get; set; }
        public string Country { get; set; }
        public string State { get; set; }
        public bool TermsandCondituins { get; set; }
    }
}
