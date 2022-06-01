using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiddleTire2.Modules.BankOperations.Models
{
    public class Deposit
    {
        public string UserId { get; set; } 
        public string AccountNumber { get; set; }
        public string AccountName { get; set; }
        public string BankName { get; set; }
        public string Branch { get; set; }
        public string IFSCCode { get; set; }
        public string BankBalance { get; set; }

    }
}
