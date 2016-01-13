using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebMVCPhongMach.Startup))]
namespace WebMVCPhongMach
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
