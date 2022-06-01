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
    public partial class Benificiary : System.Web.UI.Page
    {
        BankAdapter bankAdapter = new BankAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            BenificiaryDetails benificiary = new BenificiaryDetails();

            benificiary.AccountNumber = txtUserAccountNumber.Text;
            benificiary.BenificiaryName = txtBenificiaryName.Text;
            benificiary.BeniAccountNumber = txtBenificiaryAccountNumber.Text;
            benificiary.BeniBankName = txtBankName.Text;
            benificiary.BeniBranch = txtBranch.Text;
            benificiary.IFSCCode = txtIFSCCode.Text;

            bankAdapter.addBenificiary(benificiary);

            benificiaryDetails.Text = "Benificiary Added Sucessfully!!!!!";
            benificiaryDetails.Visible = true;
        }
    }
}