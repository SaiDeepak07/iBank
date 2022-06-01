using MiddleTire2.Modules.Users.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiddleTire2.Modules.Common
{
    public class CompleteProfile : User
    {
        public string AadharCard { get; set; }
        public string PANnumber { get; set; }
        public string Passport { get; set; }
    }
}
