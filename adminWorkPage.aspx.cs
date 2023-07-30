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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // disabling the input validators
                idValidator.Enabled = false;
                searchValidator.Enabled = false;
                idValidator.Visible = false;
                searchValidator.Visible = false;

                // set focus to the display btton
                displayBtn.Focus();
            }
        }

        // declaring public variable
        string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\143.160.81.13\CTX_Redirected_Data$\27268217\Documents\Mokoena_27268217_Assessment2\App_Data\CustomersDb.mdf;Integrated Security=True";
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter adpt;
        DataSet ds;

        // delete customer method
        public void deleteCustomer(string sql)
        {
            try
            {
                // declaring the connection
                conn = new SqlConnection(connStr);

                // open the connection
                conn.Open();

                // declare the command
                cmd = new SqlCommand(sql, conn);

                // declare the data adapter
                adpt = new SqlDataAdapter();
                adpt.DeleteCommand = cmd;
                adpt.DeleteCommand.ExecuteNonQuery();

                // close connection
                conn.Close();

                // confirm the removal of the record
                lblDelete.Text = "Customer has been removed successfully";

                // clear the id textbox
                customerIdTxtBox.Text = "";

                // disable the delete validator
                idValidator.Enabled = false;
                idValidator.Visible = false;
            }
            catch (SqlException ex)
            {
                // display the error
                lblError.Text = ex.ToString();
            }
        }

        public void displayData(string query)
        {
            try
            {
                // declaring the connection
                conn = new SqlConnection(connStr);  

                // open the connection
                conn.Open();

                // declare the command
                cmd = new SqlCommand(query, conn);

                // declare the data adapter
                adpt = new SqlDataAdapter();
                ds = new DataSet();

                // assign the adapter 
                adpt.SelectCommand = cmd;
                adpt.Fill(ds);

                // display data on the gridview
                customersGridView.DataSource = ds;
                customersGridView.DataBind();

                // close connection
                conn.Close();
            }
            catch (SqlException ex)
            {
                // display the error
                lblError.Text = ex.ToString();
            }
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            // enable the validators
            idValidator.Enabled = true;
            searchValidator.Enabled = true;

            // declare the string query
            string sql = $"DELETE FROM Customer WHERE IDnumber = '{customerIdTxtBox.Text}'";

            // call the delete customer method
            deleteCustomer(sql);
        }

        protected void displayBtn_Click(object sender, EventArgs e)
        {
            // declare the string query
            string displayQuery = "SELECT * FROM Customer";

            // call the display method
            displayData(displayQuery);
        }

        protected void addCustomer_Click(object sender, EventArgs e)
        {
            // redirect the admin to the registration page
            Response.Redirect("registerPage.aspx");
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            // enable the validators
            searchValidator.Enabled = true;
            searchValidator.Visible = true;

            // declare the string query
            string searchQuery = $"SELECT * FROM Customer WHERE Name LIKE '%{searchNameTxtBox.Text}%'";

            // call the display method
            displayData(searchQuery);
        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            // redirect the admin to the update page
            Response.Redirect("updateCustomersInfo.aspx");
        }
    }
}