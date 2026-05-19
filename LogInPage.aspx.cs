using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_3
{
    public partial class LogInPage : System.Web.UI.Page
    {
        SqlConnection cnn;
        SqlCommand cmd;
        SqlDataReader reader;
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\MegatronicsInformation.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e) //This method helps with setting the dark mode or light mode.
        {
            if (Request.Cookies["Theme"] != null)
            {
                string mode = Request.Cookies["Theme"]["Mode"];

                if (mode == "dark")
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

        protected void btnLogIn_Click(object sender, EventArgs e) //This buttonchecks if the entered credentials of the user matches the ones in the database.
        {
            try
            {
                string username = txtUsername.Text;
                string password = txtPassword.Text;

                string hashedPassword = HashPassword(password);

                cnn = new SqlConnection(connectionString);

                cnn.Open();

                string sql = "SELECT Role FROM Users WHERE Username = @Username AND Password = @Password";

                cmd = new SqlCommand(sql, cnn);

                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", hashedPassword);


                reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    string role = reader.GetValue(0).ToString();

                    Session["Username"] = username;
                    Session["Role"] = role;

                    if (role == "Seller")
                    {
                        Response.Redirect("SellerDashBoardPage.aspx");
                    }
                    else
                    {
                        Response.Redirect("BuyerDashBoardPage.aspx");
                    }
                }
                else
                {
                    lblOutput.Text = "Wrong username or password";
                }

                cnn.Close();
            }
            catch (SqlException ex)
            {
                lblOutput.Text = ex.Message;
            }
        }
        private string HashPassword(string password) //This method hashes the password (it encrypts the password). I received help from the internet.
        {
            SHA256 sha = SHA256.Create();
            byte[] bytes = sha.ComputeHash(Encoding.UTF8.GetBytes(password));

            StringBuilder sb = new StringBuilder();
            foreach (byte b in bytes)
            {
                sb.Append(b.ToString("x2"));
            }

            return sb.ToString();
        }

        protected void btnDarkMode_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnLightMode_Click(object sender, EventArgs e)
        {
            
        }
    }
}