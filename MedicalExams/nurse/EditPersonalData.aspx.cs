using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nurse_EditPersonalData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSourceNurses.SelectParameters["username"].DefaultValue = HttpContext.Current.User.Identity.Name;
   
    }


    protected void ButtonScheduleExams_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ExamScheduler.aspx");
    }
}