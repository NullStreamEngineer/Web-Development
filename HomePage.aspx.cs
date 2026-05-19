using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_3
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) //This method helps with setting the dark mode or light mode.
        {
            if (Request.Cookies["Theme"] != null)
            {
                string mode = Request.Cookies["Theme"]["Mode"];
                
                if(mode == "dark")
                {
                    bodyTag.Attributes["class"] = "dark-theme";
                }
                else
                {
                    bodyTag.Attributes["class"] = "light-theme";
                }
            }
            else
            {
                bodyTag.Attributes["class"] = "light-theme";
            }
        }

        protected void btnLogIn_Click(object sender, EventArgs e) //This button redirects users to the log in page.
        {
            Response.Redirect("LogInPage.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e) //This button redirects new users who are to register to the registration page.
        {
            Response.Redirect("RegisterPage.aspx");
        }

        protected void cbxDarkMode_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnDarkMode_Click(object sender, EventArgs e) //This button makes the appliaction go into dark mode.
        {
            HttpCookie themeCookie = new HttpCookie("Theme");
            themeCookie["Mode"] = "dark";
            themeCookie.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(themeCookie);

            Response.Redirect("HomePage.aspx");
        }

        protected void btnLightMode_Click(object sender, EventArgs e) //This button makes the appliaction go into light mode.
        {
            HttpCookie themeCookie = new HttpCookie("Theme");
            themeCookie["Mode"] = "light";
            themeCookie.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(themeCookie);

            Response.Redirect("HomePage.aspx");
        }
    }
}