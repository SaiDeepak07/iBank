using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MiddleTire2;
using MiddleTire2.Modules.Common;
using MiddleTire2.Modules.Users.Adapters;
using MiddleTire2.Modules.Users.Models;

namespace iBank.Modules.Users
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            UserAdapter objUserAdp = new UserAdapter();
            User objUserModel = new User();
            objUserModel.Address = txtAddress.Text;
            objUserModel.FirstName = txtFirstName.Text;
            objUserModel.LastName= txtLastName.Text;
            objUserModel.Email= txtEmail.Text;
            objUserModel.PhoneNumber = txtPhoneNumber.Text;
            objUserModel.UserName = txtUserName.Text;
            objUserModel.Password = txtPassword.Text;
            //objUserModel.ConfirmPassword = txtConfirmPassword.Text;
            objUserModel.Address = txtAddress.Text;
            //objUserModel.UploadPhoto = FileUpload.V;
            objUserModel.Gender = RadioButtonList1.SelectedValue;
            objUserModel.DOB = txtDOB.Text;
            objUserModel.Country = ddlCountry.SelectedValue;
            objUserModel.State = ddlState.SelectedValue;
            objUserModel.TermsandConditoins = cbTermsandConditions.Checked;


            objUserAdp.saveUserData(objUserModel);

            creationMessage.Text = "User Created with user ID " + objUserAdp.getUserId();

            CompleteProfile CompProf = new CompleteProfile();


        }
    }
}