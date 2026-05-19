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
    public partial class RegisterPage : System.Web.UI.Page
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

        protected void btnSignUp_Click(object sender, EventArgs e) //This button helps add new users to the database as well as their hashed password.
        {
            try
            {
                string username = txtUsername.Text;
                string password = txtPassword.Text;
                string role = "";

                if (rdoBuyer.Checked)
                {
                    role = "Buyer";
                }
                else if (rdoSeller.Checked)
                {
                    role = "Seller";
                }
                else
                {
                    lblOutput.Text = "Please select a role!";
                    return;
                }

                string hashedPassword = HashPassword(password);

                cnn = new SqlConnection(connectionString);

                cnn.Open();

                string sql = "SELECT Username FROM Users WHERE Username = @Username";

                cmd = new SqlCommand(sql, cnn);

                cmd.Parameters.AddWithValue("@Username", username);

                reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    lblOutput.Text = "Username already exists!";
                    cnn.Close();
                    return;
                }

                cnn.Close();

                cnn.Open();

                string sql2 = "INSERT INTO Users (Username, Password, Role) VALUES (@Username, @Password, @Role)";

                cmd = new SqlCommand(sql2, cnn);

                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", hashedPassword);
                cmd.Parameters.AddWithValue("@Role", role);
                cmd.ExecuteNonQuery();

                cnn.Close();

                Response.Redirect("LogInPage.aspx");
            }
            catch(SqlException ex)
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