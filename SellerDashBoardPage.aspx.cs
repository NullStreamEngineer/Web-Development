using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_3
{
    public partial class SellerDashBoardPage : System.Web.UI.Page
    {
        SqlConnection cnn;
        SqlCommand cmd;
        SqlDataReader reader;
        SqlDataAdapter adapt;
        DataSet ds;
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

            if (Session["Username"] == null)
            {
                Response.Redirect("HomePage.aspx");
            }

            lblWelcome.Text = "Welcome, " + Session["Username"].ToString();

            if(!IsPostBack)
            {
                LoadGrid();
            }
        }

        private void LoadGrid() //This method helps load all the products into the gridview. 
        {
            cnn = new SqlConnection(connectionString);

            cnn.Open();

            string sql = "SELECT * FROM Products";

            adapt = new SqlDataAdapter(sql, cnn);
            ds = new DataSet();
            adapt.Fill(ds);

            gvProducts.DataSource = ds;
            gvProducts.DataBind();

            cnn.Close();
        }

        protected void btnInsert_Click(object sender, EventArgs e) //This button helps a seller insert a new product into the database.
        {
            string productID = txtProductID.Text;
            string productName = txtProductName.Text;
            string category = txtCategory.Text;
            string description = txtDescription.Text;
            string price = txtPrice.Text;

            cnn = new SqlConnection (connectionString);

            cnn.Open();

            string sql = "INSERT INTO Products (ProductName, Category, Description, Price) VALUES (@ProductName, @Category, @Description, @Price)";

            cmd = new SqlCommand(sql, cnn);

            cmd.Parameters.AddWithValue("@ProductName", productName);
            cmd.Parameters.AddWithValue("@Category", category);
            cmd.Parameters.AddWithValue("@Description", description);
            cmd.Parameters.AddWithValue("@Price", price);
            cmd.ExecuteNonQuery();

            cnn.Close();

            lblOutput.Text = "Product added sucessfully!";

            LoadGrid();
        }

        protected void btnDelete_Click(object sender, EventArgs e) //This button helps a seller delete a product by just entering the product's ID.
        {
            cnn = new SqlConnection(connectionString);

            cnn.Open();

            string sql = "DELETE FROM Products WHERE ProductID = @ProductID";

            cmd = new SqlCommand(sql, cnn);

            cmd.Parameters.AddWithValue("@ProductID", txtProductID.Text);
            cmd.ExecuteNonQuery();

            cnn.Close();

            lblOutput.Text = "Product deleted successfully!";

            LoadGrid();
        }

        protected void btnUpdate_Click(object sender, EventArgs e) //This button helps a seller update the contents of a product.
        {
            string productID = txtProductID.Text;
            string productName = txtProductName.Text;
            string category = txtCategory.Text;
            string description = txtDescription.Text;
            string price = txtPrice.Text;

            cnn = new SqlConnection(connectionString);

            cnn.Open();

            string sql = "UPDATE Products SET ProductName = @ProductName, Category = @Category, Description = @Description, Price = @Price WHERE ProductID = @ProductID";

            cmd = new SqlCommand (sql, cnn);

            cmd.Parameters.AddWithValue("@ProductID", productID);
            cmd.Parameters.AddWithValue("@ProductName", productName);
            cmd.Parameters.AddWithValue("@Category", category);
            cmd.Parameters.AddWithValue("@Description", description);
            cmd.Parameters.AddWithValue("@Price", price);
            cmd.ExecuteNonQuery();

            cnn.Close();

            lblOutput.Text = "Product updated sucessfully!";

            LoadGrid();
        }

        protected void btnLogOut_Click(object sender, EventArgs e) //This button redirects the user to the home page.
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e) //This button clears the textboxes.
        {
            txtProductID.Text = "";
            txtProductName.Text = "";
            txtCategory.Text = "";
            txtDescription.Text = "";
            txtPrice.Text = "";
        }
    }
}