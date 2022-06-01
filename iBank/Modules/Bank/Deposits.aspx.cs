using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MiddleTire2;
using MiddleTire2.Modules.BankOperations.Models;
using MiddleTire2.Modules.BankOperations.Adapters;

namespace iBank.Modules.Bank
{
    public partial class Deposits : System.Web.UI.Page
    {
        BankAdapter adapter = new BankAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Deposit bankUser = adapter.getDetails(txtAccountNumber.Text);
            txtAccountName.Text = bankUser.AccountName;
            txtBankName.Text = bankUser.BankName;
            txtBranch.Text = bankUser.Branch;
            txtIFSCCode.Text = bankUser.IFSCCode;
            txtAccountName.Enabled = false;
            txtBankName.Enabled = false;
            txtBranch.Enabled = false;
            txtIFSCCode.Enabled = false;

        }

        protected void btnDeposit_Click(object sender, EventArgs e)
        {
            adapter.doDeposit(txtDepositAmount.Text, txtAccountNumber.Text);
            DepositMessage.Text = "Deposit Secessful!!!";
            DepositMessage.Visible = true;
        }
    }
}