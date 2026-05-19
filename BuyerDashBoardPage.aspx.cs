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
    public partial class BuyerDashBoardPage : System.Web.UI.Page
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

            if (Session["Username"] == null || Session["Role"].ToString() != "Buyer") //This if makes sure that the buyer does not go through the seller's site page and vice versa.
            {
                Response.Redirect("HomePage.aspx");
            }

            if (!IsPostBack)
            {
                LoadCategories();
                LoadAllProducts();

                lblPriceValue.Text = "10000";
                
            }
            else
            {
                FilterByPrice();
            }
        }

        private void LoadCategories() //This method helps load the different categories we have into the dropdownlist.
        {
            try
            {
                cnn = new SqlConnection(connectionString);

                cnn.Open();

                string sql = "SELECT Category FROM Products";

                adapt = new SqlDataAdapter(sql, cnn);
                ds = new DataSet();
                adapt.Fill(ds, "Products");

                ddlCategory.Items.Clear();
                ddlCategory.Items.Add("All");

                for(int i = 0; i < ds.Tables["Products"].Rows.Count; i++) //This for loop loops through all the products in a database and adds each product’s Category to the dropdownlist. 
                {
                    string category = ds.Tables["Products"].Rows[i]["Category"].ToString();

                    if(!ddlCategory.Items.Contains(new ListItem(category)))
                    {
                        ddlCategory.Items.Add(category);
                    }
                }

                cnn.Close();
            }
            catch(SqlException ex)
            {
                lblOutput.Text = ex.Message;
            }
        }

        private void LoadAllProducts() //This method helps load all the products on the database on the gridview.
        {
            try
            {
                cnn = new SqlConnection(connectionString);

                cnn.Open();

                string sql = "SELECT * FROM Products";

                adapt = new SqlDataAdapter(sql, cnn);
                ds = new DataSet();
                adapt.Fill(ds, "Products");

                gvProducts.DataSource = ds;
                gvProducts.DataMember = "Products";
                gvProducts.DataBind();

                cnn.Close();
            }
            catch (Exception ex)
            {
                lblOutput.Text = ex.Message;
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e) //This button redirects the user to the home page.
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e) //This helps filter the gridview when the user chooses to filter by the catagory dropdownlist.
        {
            try
            {
                cnn = new SqlConnection(connectionString);

                cnn.Open();

                string category = ddlCategory.SelectedItem.ToString();
                string sql = "";

                if(category == "All")
                {
                    sql = "SELECT * FROM PRODUCTS";
                }
                else
                {
                    sql = "SELECT * FROM Products WHERE Category = '" + category + "'";
                }

                adapt = new SqlDataAdapter(sql, cnn);
                ds = new DataSet();
                adapt.Fill(ds, "Products");

                gvProducts.DataSource = ds;
                gvProducts.DataMember = "Products";
                gvProducts.DataBind();

                cnn.Close();
            }
            catch(SqlException ex)
            {
                lblOutput.Text = ex.Message;
            }
        }

        protected void txtProductName_TextChanged(object sender, EventArgs e) //This helps filter the gridview when the user chooses to filter by typing product name.
        {
            try
            {
                cnn = new SqlConnection(connectionString);

                cnn.Open();

                string name = txtProductName.Text;

                string sql = "SELECT * FROM Products WHERE ProductName LIKE '%" + name + "%'";

                adapt = new SqlDataAdapter(sql, cnn);
                ds = new DataSet();
                adapt.Fill(ds, "Products");

                gvProducts.DataSource = ds;
                gvProducts.DataMember = "Products";
                gvProducts.DataBind();

                cnn.Close();
            }
            catch(SqlException ex)
            {
                lblOutput.Text = ex.Message;
            }
        }

        private void FilterByPrice() //This helps filter the gridview when the user chooses to filter by price by using the hardcorded scrollbar. I received help from the internet.
        {
            try
            {
                string price = hdnPrice.Value;

                if (price == "")
                {
                    return;
                }

                cnn = new SqlConnection(connectionString);
                cnn.Open();

                string sql = "SELECT * FROM Products WHERE Price <= " + price;

                adapt = new SqlDataAdapter(sql, cnn);
                ds = new DataSet();
                adapt.Fill(ds, "Products");

                gvProducts.DataSource = ds;
                gvProducts.DataMember = "Products";
                gvProducts.DataBind();

                cnn.Close();
            }
            catch (SqlException ex)
            {
                lblOutput.Text = ex.Message;
            }
        }
    }
}