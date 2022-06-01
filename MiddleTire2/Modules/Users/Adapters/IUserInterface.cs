using MiddleTire2.Modules.Users.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiddleTire2.Modules.Users.Adapters
{
    public interface IUserInterface
    {

        void saveUserData(User objUser);
       

    }
}
