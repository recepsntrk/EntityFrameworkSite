using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Satis.web
{
    public partial class Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBase.GZipSIKISTIRMA(HttpContext.Current);
            if (Request.QueryString["ID"]==null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else if (int.Parse(Request.QueryString["ID"])==1)
            {
                pnlGizlilik.Visible = true;
            }
            else if (int.Parse(Request.QueryString["ID"])==2)
            {
                pnlSartlar.Visible = true;
            }
            else if (int.Parse(Request.QueryString["ID"]) == 3)
            {
                pnlSorular.Visible = true;
            }
            else if (int.Parse(Request.QueryString["ID"]) == 4)
            {
                pnlIade.Visible = true;
            }
            else if (int.Parse(Request.QueryString["ID"]) == 5)
            {
                pnlOdeme.Visible = true;
            }
            else if (int.Parse(Request.QueryString["ID"]) == 6)
            {
                pnlTeslimat.Visible = true;
            }
        }
    }
}