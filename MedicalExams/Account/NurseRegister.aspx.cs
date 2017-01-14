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

public partial class Account_NurseRegister : System.Web.UI.Page
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
        if (CreateNurseUser())
        {
            CreateNurse();
            Response.Redirect("~/Default.aspx");
        }
    }

    private void CreateNurse()
    {
        SqlConnection connection = null;

        try
        {
            connection = new SqlConnection(ConfigurationManager.ConnectionStrings["med_exConnectionString1"].ConnectionString);

            SqlCommand commandInsertNurse = new SqlCommand("INSERT INTO Nurse (Nurse_name, Nurse_address, Nurse_phone, Nurse_Bithdate, Postal_Code, username, email) VALUES (@Nurse_name, @Nurse_address, @Nurse_phone, @Nurse_Bithdate, @Postal_Code, @username, @email);", connection);
            commandInsertNurse.Parameters.AddWithValue("Nurse_name", tbName.Text);
            commandInsertNurse.Parameters.AddWithValue("Nurse_address", tbAddress.Text);
            commandInsertNurse.Parameters.AddWithValue("Nurse_phone", tbPhone.Text);
            commandInsertNurse.Parameters.AddWithValue("Nurse_Bithdate", tbBirthDate.Text);
            commandInsertNurse.Parameters.AddWithValue("Postal_Code", tbPostalCode.Text);
            commandInsertNurse.Parameters.AddWithValue("username", tbUsername.Text);
            commandInsertNurse.Parameters.AddWithValue("email", tbEmail.Text);


            connection.Open();
            commandInsertNurse.ExecuteNonQuery();
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

    private bool CreateNurseUser()
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

        ApplicationUser nurse = new ApplicationUser();
        nurse.UserName = tbUsername.Text;
        IdentityResult result = userManager.Create(nurse, tbPassword.Text);

        if (!result.Succeeded)
        {
            foreach (string error in result.Errors)
            {
                labelErrors.Text += error + "<br/>";
            }

            return false;
        }

        result = userManager.AddToRole(nurse.Id, "nurse");
        // handle possible errors ...

        return true;
    }
}