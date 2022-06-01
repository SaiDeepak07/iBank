using MiddleTire2.Modules.BankOperations.Adapters;
using MiddleTire2.Modules.BankOperations.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iBank.Modules.Bank
{
    public partial class BankDetails : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                onPageLoad();
            }
        }
        public void onPageLoad()
        {
            creationMessage.Visible = false;
            txtBankBalance.Text = "10000";
            txtBankBalance.Enabled = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            BankAdapter objBankAdp = new BankAdapter();
            Deposit BankUser = new Deposit();

            BankUser.UserId = txtUserId.Text;
            BankUser.AccountName= txtAccountName.Text;  
            BankUser.BankName= txtBankName.Text;
            BankUser.Branch= txtBranch.Text;
            BankUser.IFSCCode=txtIFSCCode.Text;
            BankUser.BankBalance = txtBankBalance.Text;

            

            objBankAdp.createNewAccount(BankUser);

            creationMessage.Text = "Your Account Number is " + objBankAdp.getAccountNumber();

            string message = "User Not Created!!!!";

            if (objBankAdp.getAccountNumber().Length != 0)
            {
                message = "User Created Successfull with Account Number " + objBankAdp.getAccountNumber();
            }
            creationMessage.Text = message;
            creationMessage.Visible = true;




        }
    }
}
                  
    
