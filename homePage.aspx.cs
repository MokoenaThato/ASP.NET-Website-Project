using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mokoena_27268217_Assessment2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // set focus to the customer button
            customerBtn.Focus();
        }

        protected void customerBtn_Click(object sender, EventArgs e)
        {
            // redirect the user to the customer login page
            Response.Redirect("customerLogin.aspx");
        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            // redirect the user to the registration page
            Response.Redirect("registerPage.aspx");
        }

        protected void adminBtn_Click(object sender, EventArgs e)
        {
            // redirect the user to the admin login page
            Response.Redirect("adminLogin.aspx");
        }
    }
}