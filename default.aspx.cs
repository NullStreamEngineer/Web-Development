using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical_9._0
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            HttpCookie newCookie = new HttpCookie("UserInfo");
            newCookie["Name"] = txtName.Text;
            newCookie.Expires = DateTime.Now.AddMinutes(5);
            Session["StudyLevel"] = ddlStudyLevel.SelectedItem.Text;
            Response.Cookies.Add(newCookie);
            Response.Redirect("Booking.aspx");
        }
    }
}