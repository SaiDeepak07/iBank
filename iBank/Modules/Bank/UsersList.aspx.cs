using MiddleTire2.Modules.Users.Adapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iBank.Modules.Bank
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserAdapter Adp = new UserAdapter();
            {
                if (!Page.IsPostBack)
                {
                    DataSet ds = new DataSet();
                    ds = Adp.GetUsersList();
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }

            }
        }

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    //Checking the RowType of the Row  
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        //If Salary is less than 10000 than set the row Background Color to Cyan  
        //        if (Convert.ToInt32(e.Row.Cells[3].Text) < 10000)
        //        {
        //            e.Row.BackColor = Color.Cyan;
        //        }
        //    }
        //}
    }
}
