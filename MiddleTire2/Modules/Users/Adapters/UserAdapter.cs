using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MiddleTire2.Modules.Users.Models;

namespace MiddleTire2.Modules.Users.Adapters
{
    public class UserAdapter
    {

        public DataSet GetUsersList()
        {
            SqlConnection conn = DbConnection.CreateConnection();
            DataSet dsUsersList = new DataSet();
            try
            {
                SqlCommand sqlcomm;
                sqlcomm = new SqlCommand();
                sqlcomm.Connection = conn;
                sqlcomm.CommandType = CommandType.StoredProcedure;
                sqlcomm.CommandText = "sp_GetUsersList";
                SqlDataAdapter adapter = new SqlDataAdapter();
                conn.Open();
                adapter.SelectCommand = sqlcomm;
                adapter.Fill(dsUsersList);
                return dsUsersList;
            }
            catch (Exception ex)
            { return dsUsersList; }
            finally
            { conn.Close(); }
        }


        public string login(string UserName)
        {
            SqlConnection conn = DbConnection.CreateConnection();
            string query = "sp_loginDetails";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("UserName",UserName);
            conn.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            string Password = "";
            if (sqlDataReader.Read())
                Password = sqlDataReader.GetString(0);
            return Password;
        }
        public void saveUserData(User objUser)
        {
            #region StringBuilder
            //StringBuilder stringbuilder = new StringBuilder();
            //string terms = "false";
            //stringbuilder.AppendLine("INSERT INTO NewUser (FirstName,LastName,Email,Phone_Number,UserName,Password,ConfirmPassword,Address,Photo,Gender,DOB,Country,states,TermsandConditions) VALUES ('");
            //stringbuilder.AppendLine(objUser.FirstName);
            //stringbuilder.AppendLine("','");
            //stringbuilder.AppendLine(objUser.LastName);
            //stringbuilder.AppendLine("','");
            //stringbuilder.AppendLine(objUser.Email);           
            //stringbuilder.AppendLine("','");
            //stringbuilder.AppendLine(objUser.PhoneNumber);
            //stringbuilder.AppendLine("','");
            //stringbuilder.AppendLine(objUser.UserName);
            //stringbuilder.AppendLine("','");
            //stringbuilder.AppendLine(objUser.Password);
            //stringbuilder.AppendLine("','");
            //stringbuilder.AppendLine(objUser.ConfirmPassword);
            //stringbuilder.AppendLine("','");
            //stringbuilder.AppendLine(objUser.Address);
            //stringbuilder.AppendLine("','");
            //stringbuilder.AppendLine(objUser.UploadPhoto);
            //stringbuilder.AppendLine("','");
            //stringbuilder.AppendLine(objUser.Gender);
            //stringbuilder.AppendLine("','");
            //stringbuilder.AppendLine(objUser.DOB);
            //stringbuilder.AppendLine("','");
            //stringbuilder.AppendLine(objUser.Country);
            //stringbuilder.AppendLine("','");
            //stringbuilder.AppendLine(objUser.State);
            //stringbuilder.AppendLine("','");
            //if (objUser.TermsandConditoins)
            //{
            //    terms = "";
            //    terms = "true";
            //}
            //stringbuilder.AppendLine(terms);
            //stringbuilder.AppendLine("')");
            #endregion
            //string query = "INSERT INTO Registrations (FirstName,LastName,Address,Country) VALUES ('" + objUser.FirstName+"'"+objUser.LastName +"'"+ +"')";
            //string query = stringbuilder.ToString();

            //string query= $"INSERT INTO NewUser (FirstName,LastName,Email,Phone_Number,UserName,Password,ConfirmPassword,Address,Photo,Gender,DOB,Country,states,TermsandConditions) VALUES ('{objUser.FirstName}'";

            SqlConnection cnn=DbConnection.CreateConnection();
            string query = "spCreateUser";
            SqlCommand cmd = new SqlCommand(query, cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("FirstName",objUser.FirstName);
            cmd.Parameters.AddWithValue("LastName", objUser.LastName);
            cmd.Parameters.AddWithValue("Email", objUser.Email);
            cmd.Parameters.AddWithValue("PhoneNumber", objUser.PhoneNumber);
            cmd.Parameters.AddWithValue("UserName", objUser.UserName);
            cmd.Parameters.AddWithValue("Password", objUser.Password);
            cmd.Parameters.AddWithValue("Address", objUser.Address);
            cmd.Parameters.AddWithValue("Gender", objUser.Gender);
            cmd.Parameters.AddWithValue("DOB", objUser.DOB);
            cmd.Parameters.AddWithValue("Country", objUser.Country);
            cmd.Parameters.AddWithValue("State", objUser.State);
            cmd.Parameters.AddWithValue("TermsandConditions", objUser.TermsandConditoins);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }

        public string getUserId()
        {
            string id = "";
            SqlConnection conn = DbConnection.CreateConnection();
            string query = "SELECT MAX(UserId) from NewUser";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            if (sqlDataReader.Read())
            {
                id += sqlDataReader.GetInt32(0).ToString();
            }
            conn.Close();
            return id;
        }



        //public SqlConnection connectToDatabase()
        //{
        //    string connetionString;
        //    SqlConnection cnn;
        //    //connetionString = @"Data Source=INHYNSGURRALA01;Initial Catalog=iBank ;User ID=iBankProject;Password=Infor@12345";
        //    connetionString = "Data Source=INHYNSGURRALA01;Initial Catalog=iBank;Integrated Security=True";
        //    cnn = new SqlConnection(connetionString);
        //    return cnn;
        //}
    }
}

