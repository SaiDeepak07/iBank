using MiddleTire2.Modules.Users.Adapters;
using MiddleTire2.Modules.Users.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iBank.Modules.Bank
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            UserAdapter Adp = new UserAdapter();

            string Password = Adp.login(txtUserName.Text);
            string userpassword = txtPassword.Text;

            if (String.Compare(userpassword, Password)==0)
            {
                DisplayMessage.Text = "Login Successfull !";
                Response.Redirect("https://localhost:44376/Modules/Bank/Deposits");
            }
            else
            {
                DisplayMessage.Text = "PASSWORD INCORRECT ";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44376/Modules/Users/Registration");
        }
    }
}