using MiddleTire2.Modules.BankOperations.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace MiddleTire2.Modules.BankOperations.Adapters
{
    public class BankAdapter
    {
        public string getAccountNumber()
        {
            string AccountNumber = "";
            SqlConnection conn = DbConnection.CreateConnection();
            string query = "SELECT MAX(AccountNumber) from BankDetails";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            if (sqlDataReader.Read())
            {
                AccountNumber += sqlDataReader.GetInt32(0).ToString();
            }
            conn.Close();
            return AccountNumber;
        }

        public void createNewAccount(Deposit createUser)
        {
            //@UserId,@AccountName,@BankName,@Branch,@IFSCCode,@BankBalance,@AccountNumber
            SqlConnection cnn = DbConnection.CreateConnection();
            string query = "EXEC spCreateNewBankUser " + createUser.UserId + "," + createUser.AccountName + "," + createUser.BankName + "," + createUser.Branch + "," + createUser.IFSCCode + "," + createUser.BankBalance;
            SqlCommand com = new SqlCommand(query, cnn);
            com.CommandType = CommandType.Text;
            SqlCommand cmd = new SqlCommand(query, cnn);
            cmd.CommandType = CommandType.Text;
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();

        }

        public void doDeposit(string Amount , string AccountNumber)
        {
            string query = "EXEC spUpdateBalance " + Amount + "," + AccountNumber;
            SqlConnection cnn = DbConnection.CreateConnection();
            SqlCommand com = new SqlCommand(query, cnn);
            com.CommandType = CommandType.Text;
            cnn.Open();   //EXEC spUpdateBankBalance Ammount AccountNumber
            com.ExecuteNonQuery();
            cnn.Close();
        }

        public Deposit getDetails(string AccountNumber)
        {

            string query = "EXEC spGetDetails " + AccountNumber;
            SqlConnection conn = DbConnection.CreateConnection();
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            Deposit bankUser = new Deposit();
            if (sqlDataReader.Read())
            {
                bankUser.AccountName = sqlDataReader.GetString(0).ToString();
                bankUser.BankName = sqlDataReader.GetString(1).ToString();
                bankUser.Branch = sqlDataReader.GetString(2).ToString();
                bankUser.IFSCCode = sqlDataReader.GetValue(3).ToString();
            }
            conn.Close();
            return bankUser;
        }

        public void addBenificiary(BenificiaryDetails benificiary)
        {
            string query = "EXEC spAddBenificiary " + benificiary.AccountNumber + "," + benificiary.BenificiaryName + "," + benificiary.BeniAccountNumber + "," + benificiary.BeniBankName + "," + benificiary.BeniBranch + "," + benificiary.IFSCCode;
            SqlConnection conn = DbConnection.CreateConnection();
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.CommandType = CommandType.Text;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
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
