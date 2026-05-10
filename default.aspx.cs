using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical7._0
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                thisCal.SelectedDate = DateTime.Today;
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            string message1 = "";
            string message2 = "";
            try
            {
                if (Page.IsValid)
                {
                    DateTime bookingDate = thisCal.SelectedDate;

                    if (bookingDate.DayOfWeek == DayOfWeek.Monday || bookingDate.DayOfWeek == DayOfWeek.Friday)
                    {
                        string campus = "";
                        int daysToAdd = 0;
                        string timeSlot = "";

                        if (rdoMC.Checked)
                        {
                            campus = "Mahikeng";
                            daysToAdd = 8;
                            timeSlot = "10:00am - 12:00pm";
                        }
                        else if (rdoPC.Checked)
                        {
                            campus = "Potchefstroom";
                            daysToAdd = 4;
                            timeSlot = "11:00am – 1:00pm";
                        }
                        else if (rdoVC.Checked)
                        {
                            campus = "Vanderbijlpark";
                            daysToAdd = 6;
                            timeSlot = "08:00am - 10:00am";
                        }

                        if (message1 == "")
                        {
                            DateTime classDate = bookingDate.AddDays(daysToAdd);

                            string dayName = classDate.DayOfWeek.ToString();
                            string fullDate = classDate.ToLongDateString();

                            message1 = "Hello " + txtName.Text +
                                       "\nYour class has been successfully booked!";

                            message2 = "Class Day: " + dayName + "\n" +
                                       "Class Date: " + fullDate + "\n" +
                                       "Time Slot: " + timeSlot;
                        }
                    }
                    else
                    {
                        message1 = "Bookings are only allowed on Mondays and Fridays.";
                    }
                }

                lblOutput.Text = message1;
                lblOutput1.Text = message2;

            }
            catch(Exception ex)
            {
                lblOutput.Text = ex.Message;
                lblOutput1.Text = "";
            }

            



        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtEmail.Text = "";
            txtName.Text = "";
            txtStudentName.Text = "";

            rdoMC.Checked = false;
            rdoPC.Checked = false;
            rdoVC.Checked = false;

            thisCal.SelectedDate = DateTime.Today;

            lblOutput.Text = "";
            lblOutput1.Text = "";
        }
    }
}