using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(National_Foods.Startup))]
namespace National_Foods
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
