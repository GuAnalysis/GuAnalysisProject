using medical_exams;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_PatientRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void btRegister_Click(object sender, EventArgs e)
    {
        if (CreateCustomerUser())
        {
            CreateCustomer();
            Response.Redirect("~/Default.aspx");
        }
    }

private void CreateCustomer()
{
    SqlConnection connection = null;

    try
    {
        connection = new SqlConnection(ConfigurationManager.ConnectionStrings["med_exConnectionString1"].ConnectionString);

        SqlCommand commandInsertPatient = new SqlCommand("INSERT INTO Patient (Patient_name, Patient_phone, email, Patient_address, Birth_date, Postal_code,Patient_username, Gender) VALUES (@Patient_name, @Patient_phone, @email, @Patient_address, @Birth_date, @Postal_code, @Patient_username, @Gender);", connection);
        commandInsertPatient.Parameters.AddWithValue("Patient_name", tbName.Text);
            commandInsertPatient.Parameters.AddWithValue("Patient_phone", tbPhone.Text);
            commandInsertPatient.Parameters.AddWithValue("email", tbEmail.Text);
            commandInsertPatient.Parameters.AddWithValue("Patient_address", tbAddress.Text);
            commandInsertPatient.Parameters.AddWithValue("Postal_code", tbPostalCode.Text);
            commandInsertPatient.Parameters.AddWithValue("Birth_date", tbBirthDate.Text);
            commandInsertPatient.Parameters.AddWithValue("Patient_username", tbUsername.Text);
            commandInsertPatient.Parameters.AddWithValue("Gender", tbGender.Text);
            connection.Open();
            commandInsertPatient.ExecuteNonQuery();
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

private bool CreateCustomerUser()
{
    medical_exams.ApplicationDbContext databaseContext = new ApplicationDbContext();

    UserStore<ApplicationUser> userStore = new UserStore<ApplicationUser>(databaseContext);
    UserManager<ApplicationUser> userManager = new UserManager<ApplicationUser>(userStore);

    ApplicationUser user = userManager.FindByName(tbUsername.Text);

    labelErrors.Text = "";

    if (user != null)
    {
        labelErrors.Text = "This username is already in use. Please select another one.";
        return false;
    }

    ApplicationUser customer = new ApplicationUser();
        customer.UserName = tbUsername.Text;
    IdentityResult result = userManager.Create(customer, tbPassword.Text);

    if (!result.Succeeded)
    {
        foreach (string error in result.Errors)
        {
            labelErrors.Text += error + "<br/>";
        }

        return false;
    }

    result = userManager.AddToRole(customer.Id, "customer");
    // handle possible errors ...

    return true;
}
}