using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac6
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtEmail.Text = "";
            txtName.Text = "";
            txtTip.Text = "";
            cbxTip.Checked = false;
            rdoThick.Checked = false;
            rdoThin.Checked = false;
            ddlSize.SelectedIndex = -1;
            lblOutput.Text = "";
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            
                int sizePrice = 0;
                string sizeName = "";

                if (ddlSize.SelectedItem.Text == "Small")
                {
                    sizePrice = 35;
                    sizeName = "Small";
                }
                else if (ddlSize.SelectedItem.Text == "Medium")
                {
                    sizePrice = 50;
                    sizeName = "Medium";
                }
                else if (ddlSize.SelectedItem.Text == "Large")
                {
                    sizePrice = 80;
                    sizeName = "Large";
                }


                int crustPrice = 0;
                string crustName = "";

                if (rdoThin.Checked)
                {
                    crustPrice = 5;
                    crustName = "Thin";
                }
                else if (rdoThick.Checked)
                {
                    crustPrice = 8;
                    crustName = "Thick";
                }
                int toppingTotal = 0;

                
                if (lstToppings.SelectedIndex == 0)
                {
                    toppingTotal += 2;
                }
                if (lstToppings.SelectedIndex == 1)
                {
                    toppingTotal += 2;
                }
                if (lstToppings.SelectedIndex == 2)
                {
                    toppingTotal += 2;
                }
                if (lstToppings.SelectedIndex == 3)
                {
                    toppingTotal += 2;
                }
                int totalPrice = sizePrice + crustPrice + toppingTotal;
            double tipAmount = 0;
            string message = "";

            if (cbxTip.Checked)
            {
                
                tipAmount = Double.Parse(txtTip.Text);
                totalPrice += (int)tipAmount;

                message = "Hi " + txtName.Text +
                                 ", you ordered a " + sizeName + " pizza with " + crustName +
                                 " crust. \nTotal price: " + totalPrice.ToString("C2") +
                                 " (including a tip of " + tipAmount.ToString("C2") + ")." + " Your tip will be collected on delivery. Thank You! ";
            }
            else
            {
                message = "Hi " + txtName.Text +
                                 ", you ordered a " + sizeName + " pizza with " + crustName +
                                 " crust. \nTotal price: " + totalPrice.ToString("C2") + ".";
            }

            lblOutput.Text = message;

        }
        

        protected void cbxTip_CheckedChanged(object sender, EventArgs e)
        {
            txtTip.Visible = cbxTip.Checked;
        }
    }
}