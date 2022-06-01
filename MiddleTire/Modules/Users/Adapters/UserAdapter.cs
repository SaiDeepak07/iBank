using MiddleTire.Modules.Users.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiddleTire.Modules.Users.Adapters
{
    public class UserAdapter
    {
        public void SaveData(User objUser)
        {

        }       
        public void ConnectToDatabase()
        {
            string connetionString;
            SqlConnection cnn;
            connetionString = @"Data Source=INHYNSGURRALA01;Initial Catalog=iBank ;User ID=iBankProject;Password=Infor@12345";
            cnn = new SqlConnection(connetionString);
            cnn.Open();

            cnn.Close();
        }
    }
}
