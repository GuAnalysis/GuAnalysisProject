using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(medical_exams.Startup))]
namespace medical_exams
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
