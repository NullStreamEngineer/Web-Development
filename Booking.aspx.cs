using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical_9._0
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie newCookie = Request.Cookies["UserInfo"];

            if (newCookie != null)
            {
                lblOutput.Text = "Welcome, " + newCookie["Name"] + "!";
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            DateTime selectedDate = Calendar1.SelectedDate;

            if (selectedDate < DateTime.Today)
            {
                lblOutput.Text = "Date cannot be in the past.";
            }
            else if (selectedDate.DayOfWeek == DayOfWeek.Saturday ||
                    selectedDate.DayOfWeek == DayOfWeek.Sunday)
            {
                lblOutput.Text = "Weekend dates are not allowed.";
            }

            Session["Module"] = ddlModule.SelectedItem.Text;

            Session["SelectedDate"] = Calendar1.SelectedDate;

            Response.Redirect("Confirmation.aspx");
        }
    }
}