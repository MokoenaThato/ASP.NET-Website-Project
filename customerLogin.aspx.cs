using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Mokoena_27268217_Assessment2
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // declare public variables
        string conStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\143.160.81.13\CTX_Redirected_Data$\27268217\Documents\Mokoena_27268217_Assessment2\App_Data\customersInfoDb.mdf;Integrated Security=True";
        SqlConnection conn;
        SqlCommand cmd;

        // checkUsername method
        public bool checkUsername(string sqlQuery)
        {
            // boolean variable for usrname match
            bool match = false;

            try
            {
                // declaring connection
                conn = new SqlConnection(conStr);

                // opening connection
                conn.Open();

                // instantiating the command query 
                cmd = new SqlCommand(sqlQuery, conn);

                // converting the query results
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                // checking for the match
                if (temp == 1)
                {
                    match = true;
                }

                // Close connection
                conn.Close();
            }
            catch (SqlException ex)
            {
                // display error message to the user
                lblError.Text = ex.ToString();
            }

            // return mactch boolean variable
            return match;
        }

        // verifyPassword method
        public void checkPassword()
        {
            try
            {
                // declaring connection
                conn = new SqlConnection(conStr);

                // opening connection
                conn.Open();

                // declaration of the sql query string
                string sql = $"SELECT Password FROM CustomerInfo WHERE Username = '{usernameTxtBox.Text}'";

                // assign command
                cmd = new SqlCommand(sql, conn);

                // converting the query into a string
                string password = cmd.ExecuteScalar().ToString().Replace(" ", "");

                if (password == passwordTxtBox.Text)
                {
                    // assign the username to a session
                    Session["Username"] = usernameTxtBox.Text;

                    // redirect user if the password is correct
                    Response.Redirect("itemsCartPage.aspx");
                }
                else
                {
                    // inform the user if the 
                    lblMsg.Text = "Password is incorrect";
                }

                // close connection
                conn.Close();
            }
            catch (SqlException ex)
            {
                // display the error
                lblError.Text = ex.ToString();
            }
        }


        protected void loginBtn_Click(object sender, EventArgs e)
        {
            // declaration of the sql query string
            string checkQuery = $"SELECT count(*) FROM CustomerInfo WHERE Username = '{usernameTxtBox.Text}'";

            // assign the match boolean
            bool match  = checkUsername(checkQuery);

            if (match == true)
            {
                // call the verify password method
                checkPassword();
            }
            else 
            {
                // display if username does not exist
                lblMsg.Text = "Username does not exits";
            }
        }
    }
}