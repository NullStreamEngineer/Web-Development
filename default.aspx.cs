using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac5
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblOutput.Text = "";
                imgCourse.Visible = false;
            }
        }

        //This the button that will let the user register.
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
                
            {
                string name = txtName.Text;
                string courses = lstCourses.SelectedItem.Text;
                string studyMode = ddlStudyMode.SelectedItem.Text;
                string email = txtEmail.Text;

                string message = "Hi " + name + " you have succesfully registered " + studyMode + " for " + courses + " Course.";

                lblOutput.Text = message;

                lblOutput.ForeColor = System.Drawing.Color.Green;

                imgCourse.Visible = true;

                if (courses == "Artifical Intelligence")
                {
                    imgCourse.ImageUrl = "~/Images/WelcometoAi.jpg";
                }
                else if (courses == "Data Science")
                {
                    imgCourse.ImageUrl = "~/Images/WelcometoDataScie.jpg";
                }
                else if (courses == "CyberSecurity")
                {
                    imgCourse.ImageUrl = "~/Images/WelcometoCyber.jpg";
                }
                else
                {
                    imgCourse.ImageUrl = "~/Images/WlcomeWebDev.png";
                }

                if(txtName.Text == "" || txtEmail.Text == "" || lstCourses.SelectedItem.Text == "" || ddlStudyMode.SelectedItem.Text == "")
                {
                    string messageError;

                    messageError = "Make sure all the required information have been provided!";


                    lblOutput.Text = messageError;
                }
            }
        }
            

        
        //This the button that will clear the controls.
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            lstCourses.SelectedIndex = 0;
            ddlStudyMode.SelectedIndex = 0;
            imgCourse.Visible = false;
            lblOutput.Text = "";

        }
    }
}