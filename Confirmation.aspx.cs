using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical_9._0
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve Cookie
                HttpCookie newCookie = Request.Cookies["UserInfo"];

                if (newCookie != null)
                {
                    lblOutput.Text = "Hello " + newCookie["Name"] + ",your slot booking information is as of:";
                }

                // Retrieve Sessions
                lblOutput1.Text = "Module: " + Session["Module"].ToString();

                DateTime selectedDate =
                    Convert.ToDateTime(Session["SelectedDate"]);

                lblOutput2.Text = selectedDate.ToString("yyyy/MM/dd");
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}