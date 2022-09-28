using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;

namespace Satis.web
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["OnlineKisiler"] = 0;
            RouteTable.Routes.MapPageRoute("Hakkımızda", "Hakkımızda", "~/Hakkimizda.aspx");
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session.Timeout = 120;

            Application.Lock();

            Application["OnlineKisiler"] = Convert.ToInt32(Application["OnlineKisiler"]) + 1;

            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();

            Application["OnlineKisiler"] = Convert.ToInt32(Application["OnlineKisiler"]) - 1;

            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}