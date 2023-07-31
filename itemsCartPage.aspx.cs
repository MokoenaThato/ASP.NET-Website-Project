using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mokoena_27268217_Assessment2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // set focus to the items textbox
                nameTxtBox.Focus();

                // display the user name using a session
                if (Session["Username"] != null)
                {
                    lblWelcome.Text = "Welcome " + Session["Username"].ToString();
                }
                
                // disable and hide the validators
                medicationValidator.Enabled = false;
                medicationValidator.Visible = false;
            }
        }

        protected void addToCartBtn_Click(object sender, EventArgs e)
        {
            // enable and unhide the validators
            medicationValidator.Enabled = true;
            medicationValidator.Visible = true;

            // add items to the listbox
            MedicationListBox.Items.Add(nameTxtBox.Text);

            // clear the item textBox
            nameTxtBox.Text = "";

        
            nameTxtBox.Focus();
        }
    }
}
