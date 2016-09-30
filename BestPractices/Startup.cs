using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BestPractices.Startup))]
namespace BestPractices
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
