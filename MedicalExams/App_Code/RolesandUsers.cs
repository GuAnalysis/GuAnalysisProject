using medical_exams;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RolesandUsers
/// </summary>
public class RolesandUsers
{
    private static bool CREATE_DUMMY_USERS = true;

    public static void Create()
    {
        medical_exams.ApplicationDbContext databaseContext = new ApplicationDbContext();

        // Role management
        RoleStore<IdentityRole> roleStore = new RoleStore<IdentityRole>(databaseContext);
        RoleManager<IdentityRole> roleManager = new RoleManager<IdentityRole>(roleStore);

        // User management
        UserStore<ApplicationUser> userStore = new UserStore<ApplicationUser>(databaseContext);
        UserManager<ApplicationUser> userManager = new UserManager<ApplicationUser>(userStore);

        if (!roleManager.RoleExists("administrator"))
        {
            roleManager.Create(new IdentityRole("administrator"));

            if (CREATE_DUMMY_USERS)
            {
                ApplicationUser admin = new ApplicationUser();
                admin.UserName = "john";

                userManager.Create(admin, "qwer!234");
                userManager.AddToRole(admin.Id, "administrator");
            }
        }

        if (!roleManager.RoleExists("manager"))
        {
            roleManager.Create(new IdentityRole("manager"));

            if (CREATE_DUMMY_USERS)
            {
                ApplicationUser manager = new ApplicationUser();
                manager.UserName = "mary";
                userManager.Create(manager, "qwer!234");
                userManager.AddToRole(manager.Id, "manager");

                manager = new ApplicationUser();
                manager.UserName = "daniel";
                userManager.Create(manager, "qwer!234");
                userManager.AddToRole(manager.Id, "manager");
            }
        }

        if (!roleManager.RoleExists("customer"))
        {
            roleManager.Create(new IdentityRole("customer"));
           
        }
        if (!roleManager.RoleExists("doctor"))
        {
            roleManager.Create(new IdentityRole("doctor"));
        }
        if (!roleManager.RoleExists("nurse"))
        {
            roleManager.Create(new IdentityRole("nurse"));
        }
    }
}