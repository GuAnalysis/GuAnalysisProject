﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_TypeofPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string IpassAstringfrompage1 = Convert.ToString(Session["test"]);

        Label1.Text = IpassAstringfrompage1;
    }
}