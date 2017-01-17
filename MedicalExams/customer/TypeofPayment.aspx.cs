using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customer_TypeofPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectParameters["Patient_username"].DefaultValue = HttpContext.Current.User.Identity.Name;

        string IpassAstringfrompage1 = Convert.ToString(Session["test"]);
        Label1.Text = IpassAstringfrompage1;

    }


    protected void btCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void btRegister_Click(object sender, EventArgs e)
    {

            CreatePayment();
            Response.Redirect("~/Default.aspx");
   
    }

    private void CreatePayment()
    {
        SqlConnection connection = null;

        try
        {
            connection = new SqlConnection(ConfigurationManager.ConnectionStrings["med_exConnectionString1"].ConnectionString);


            SqlCommand commandInsertDoctor = new SqlCommand("INSERT INTO Payment (Price, CardHolder, CardNumber, CVV, LastDate) VALUES (@Price, @CardHolder, @CardNumber, @CVV, @LastDate);", connection);
           /* commandInsertDoctor.Parameters.AddWithValue("Patient_ID", Label7.Text);*/
            commandInsertDoctor.Parameters.AddWithValue("Price", Label1.Text);
            commandInsertDoctor.Parameters.AddWithValue("CarHolder", Tbch.Text);
            commandInsertDoctor.Parameters.AddWithValue("CardNumber", tbcn.Text);
            commandInsertDoctor.Parameters.AddWithValue("CVV", tbcvv.Text);
            commandInsertDoctor.Parameters.AddWithValue("LastDate", tbld.Text);
            connection.Open();
            commandInsertDoctor.ExecuteNonQuery();
        }
        catch (Exception)
        {
            // ...
            labelErrors.Text = "A problem has occurred while registering you. Please try again latter";
        }
        finally
        {
            if (connection != null) connection.Close();
        }
    }

}