using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Mokoena_27268217_Assessment2
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // declare public variables
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\143.160.81.13\CTX_Redirected_Data$\27268217\Documents\Mokoena_27268217_Assessment2\App_Data\CustomersDb.mdf;Integrated Security=True";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter adpt;

        // update customer method
        private void updateCustomer(string updateQuery)
        {
            try
            {
                // declaring connection
                conn = new SqlConnection(conStr);

                // opening connection
                conn.Open();

                // instantiating the command query 
                cmd = new SqlCommand(updateQuery, conn);

                // declaring the sql adapter
                adpt = new SqlDataAdapter();
                adpt.UpdateCommand = cmd;
                adpt.UpdateCommand.ExecuteNonQuery();
                

                // close connection
                conn.Close();

                // display output
                lblMsg.Text = "Customer with " + idNumTxtBox.Text + " has been updated";
            }
            catch (SqlException ex)
            {
                // display error
                lblError.Text = ex.ToString();
            }
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            // declaration of the sql query string
            string query = $"UPDATE Customer SET Name ='{nameTxtBox.Text}', Surname = '{surnameTxtBox.Text}', Email = '{emailTxtBox.Text}', Gender = '{genderDropList.SelectedItem}' WHERE IDnumber = '{idNumTxtBox.Text}'";

            // call the update method
            updateCustomer(query);

            // Mic testing testing one two, one two
        }
    }
}