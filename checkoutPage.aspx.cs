using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mokoena_27268217_Assessment2
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // set the to today's date
                theCalendar.SelectedDate = DateTime.Today.Date;
            }
        }

        // declare a public variable
        decimal deliveryFee = 0.0m;
 

        protected void medicalRadioBtn_CheckedChanged(object sender, EventArgs e)
        {

            if (medicalRadioBtn.Checked)
            {
                //assign delivvery fee
                deliveryFee = 30.00m;
            }
            else if (selfPayingRadioBtn.Checked)
            {
                //assign delivvery fee
                deliveryFee = 40.00m;
            }
        }

        protected void theCalendar_SelectionChanged(object sender, EventArgs e)
        {
            // declare a date time object
            DateTime myDate = theCalendar.SelectedDate;

            if (myDate.DayOfWeek.ToString() == "Friday" || myDate.DayOfWeek.ToString() == "Saturday" || myDate.DayOfWeek.ToString() == "Sunday")
            {
                // assign days
                myDate = myDate.AddDays(3);
            }
            else
            {
                // assign days
                myDate = myDate.AddDays(2);
            }

            // assign the date to a session
            Session["Date"] = myDate;
        }

        public void finish(DateTime date)
        {
            // select the date on the calendar
            theCalendar.SelectedDate = date;
        }

        protected void finishBtn_Click(object sender, EventArgs e)
        {
            // assign a date 
            DateTime date = Convert.ToDateTime(Session["Date"]);

            if (Session["Date"] != null)
            {
                // call the finish method
                finish(Convert.ToDateTime(Session["Date"]));
            }
            // display output to the user
            lblOutput.Text = "Your delivery fee is: " + deliveryFee.ToString("c") + " and medical package will be delivered on " + date.ToString("yyyy/MM/dd");
        }
    }
}