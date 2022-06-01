using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiddleTire2
{
    public static class DbConnection
    {

        public static SqlConnection CreateConnection()
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["iBankConnectionString"].ConnectionString);
            return cnn;

        }
    }
}
