using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_EditPersonalData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSourcePatient.SelectParameters["Patient_username"].DefaultValue = HttpContext.Current.User.Identity.Name;
    
    }

}