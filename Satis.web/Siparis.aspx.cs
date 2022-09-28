using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Data;
using Satis.Biz.UrunYonetimi;

namespace Satis.web
{
    public partial class Siparis : System.Web.UI.Page
    {
        UrunQuery UrunSorgu;
        Satis.Biz.SiparisYonetimi.SiparisQuery SiparisSorgu;
        tblUyeler gelenUye;
        protected void Page_Load(object sender, EventArgs e)
        {
            UrunSorgu = new Biz.UrunYonetimi.UrunQuery();
            SiparisSorgu = new Biz.SiparisYonetimi.SiparisQuery();
            if (Session["LoggedUser"] != null)
            {
                gelenUye = (tblUyeler)Session["LoggedUser"];
                grdSiparis.DataSource=SiparisSorgu.SiparisiGetir(int.Parse(Request.QueryString["ID"]));
                grdSiparis.DataBind();
                lblToplamTutar.Text = SiparisSorgu.SiparisTutarDondur(int.Parse(Request.QueryString["ID"])).ToString();
            }
        }
    }
}