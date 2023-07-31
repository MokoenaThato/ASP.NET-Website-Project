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
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // setting focus to the name textBox
            nameTxtBox.Focus();
        }

        // Declare public variables
        string customersDbConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\143.160.81.13\CTX_Redirected_Data$\27268217\Documents\Mokoena_27268217_Assessment2\App_Data\CustomersDb.mdf;Integrated Security=True";
        string customerInfoDbConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\143.160.81.13\CTX_Redirected_Data$\27268217\Documents\Mokoena_27268217_Assessment2\App_Data\customersInfoDb.mdf;Integrated Security=True";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter adpt;
        HttpCookie theCookie = new HttpCookie("UserInfo");

        // checkUsername method
        public bool checkUsername(string sqlQuery)
        {
            // boolean variable for usrname match
            bool match = false;
            try
            {
                // declaring connection
                conn = new SqlConnection(customerInfoDbConStr);

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

        // add customer method
        public void addCustomer(string query)
        {
            try
            {
                // declaring connection
                conn = new SqlConnection(customersDbConStr);

                // open connection
                conn.Open();

                // assign command
                cmd = new SqlCommand(query, conn);

                // declare objects of adapter
                adpt = new SqlDataAdapter();
                adpt.InsertCommand = cmd;
                adpt.InsertCommand.ExecuteNonQuery();

                // close the connection
                conn.Close();

                // declare retrieve cookie
                HttpCookie retrieveCookie = Request.Cookies["UserInfo"];

                // retrieving the cookie
                if (retrieveCookie != null)
                {
                    // display the results
                    lblMsg.Text = nameTxtBox.Text + " " + surnameTxtBox.Text + " was successfully saved to the database, with username " + retrieveCookie["Username"];
                }
            }
            catch (SqlException ex)
            {
                // display the error
                lblError.Text = ex.ToString();
            }
        }

        // add customer login info method
        public void addLoginInfo(string infoQuery)
        {
            try
            {
                // declaring connection
                conn = new SqlConnection(customerInfoDbConStr);

                // open connection
                conn.Open();

                // assign command
                cmd = new SqlCommand(infoQuery, conn);

                // declare objects of adapter
                adpt = new SqlDataAdapter();
                adpt.InsertCommand = cmd;
                adpt.InsertCommand.ExecuteNonQuery();

                // close the connection
                conn.Close();
            }
            catch (SqlException ex)
            {
                // display the error
                lblError.Text = ex.ToString();
            }
        }


        protected void submitBtn_Click(object sender, EventArgs e)
        {
            // declaration of the sql query string
            string sql = $"SELECT count(*) FROM CustomerInfo WHERE Username = '{usernameTxtBox.Text}'";

            // calling the checkuser method
            bool match = checkUsername(sql);

            // checking the user match
            if (match == false)
            {
                // assign cookie values
                theCookie["Username"] = usernameTxtBox.Text;
                theCookie["Password"] = passwordTxtBox.Text;
                Response.Cookies.Add(theCookie);
                theCookie.Expires = DateTime.Now.AddSeconds(10);

                // declaration of the sql query string
                string infoQuery = $"INSERT INTO CustomerInfo(Username, Password) VALUES('{usernameTxtBox.Text}', '{passwordTxtBox.Text.Trim()}')";

                // calling the add login info method
                addLoginInfo(infoQuery);

                // declaration of the sql query string
                string query = $"INSERT INTO Customer(Name, Surname, IDnumber, Email, Gender) VALUES('{nameTxtBox.Text}', '{surnameTxtBox.Text}', '{idNumTxtBox.Text}', '{emailTxtBox.Text}', '{genderDropList.SelectedItem}')";

                // calling the add customers method
                addCustomer(query);
            }
            else
            {
                // informing the user if the username exists
                lblMsg.Text = "The usename already exists";
            }
        }
    }
}
