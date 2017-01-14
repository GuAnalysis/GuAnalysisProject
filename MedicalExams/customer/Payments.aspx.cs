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
}