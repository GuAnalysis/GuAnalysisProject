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

public partial class Account_DoctorRegister : System.Web.UI.Page
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
        if (CreateDoctorUser())
        {
            CreateDoctor();
            Response.Redirect("~/Default.aspx");
        }
    }

    private void CreateDoctor()
    {
        SqlConnection connection = null;

        try
        {
            connection = new SqlConnection(ConfigurationManager.ConnectionStrings["med_exConnectionString1"].ConnectionString);

            SqlCommand commandInsertDoctor = new SqlCommand("INSERT INTO Doctor (Doctor_name, Speciality, Doctor_phone, Doctor_mail, username) VALUES (@Doctor_name, @Speciality, @Doctor_phone, @Doctor_mail, @username);", connection);
            commandInsertDoctor.Parameters.AddWithValue("Doctor_name", tbName.Text);
            commandInsertDoctor.Parameters.AddWithValue("Speciality", ddlSpeciality.Text);
            commandInsertDoctor.Parameters.AddWithValue("Doctor_phone", tbPhone.Text);
            commandInsertDoctor.Parameters.AddWithValue("Doctor_mail", tbEmail.Text);
            commandInsertDoctor.Parameters.AddWithValue("username", tbUsername.Text);
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

    private bool CreateDoctorUser()
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

        ApplicationUser doctor = new ApplicationUser();
        doctor.UserName = tbUsername.Text;
        IdentityResult result = userManager.Create(doctor, tbPassword.Text);

        if (!result.Succeeded)
        {
            foreach (string error in result.Errors)
            {
                labelErrors.Text += error + "<br/>";
            }

            return false;
        }

        result = userManager.AddToRole(doctor.Id, "doctor");
        // handle possible errors ...

        return true;
    }

}