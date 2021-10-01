using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MentalMath.Startup))]
namespace MentalMath
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
