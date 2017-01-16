using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_Payments2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource2.SelectParameters["Patient_username"].DefaultValue = HttpContext.Current.User.Identity.Name;

    }

    protected void btPay_Click(object sender, EventArgs e)
    {
        decimal totalMVValue = 0;

        // Iterate through the Products.Rows property
        foreach (GridViewRow row in GridView1.Rows)
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
        /*  lblmsg.Text = Convert.ToString(totalMVValue);*/
        Session["test"] = totalMVValue;
        Response.Redirect("~/customer/TypeofPayment.aspx"); 

    }
}