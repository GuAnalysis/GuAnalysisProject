using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gridviewPayments_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (gridviewPayments.SelectedIndex >= 0)
        {
            btPay.Enabled = true;
        }
        else
        {
            btPay.Enabled = false;
        }
    }
  
    protected void btPay_Click(object sender, EventArgs e)
    {
       decimal totalMVValue = 0;

        // Iterate through the Products.Rows property
        foreach (GridViewRow row in gridviewPayments.Rows)
        {
            // Access the CheckBox
            CheckBox mvSelectorCheckBox = (CheckBox)row.FindControl("chkStatus");
            if (mvSelectorCheckBox != null && mvSelectorCheckBox.Checked)
            {
                // First, get the primaryId for the selected row
                decimal mvValue =
                       Convert.ToDecimal(row.Cells[2].Text);
                totalMVValue += mvValue;
             
            }

        }
        lblmsg.Text = Convert.ToString( totalMVValue);
        Response.Redirect("~/customer/TypeofPayment.aspx");

    }



}    