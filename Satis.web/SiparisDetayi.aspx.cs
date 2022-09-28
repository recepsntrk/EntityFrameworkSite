using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Data;

namespace Satis.web
{
    public partial class SiparisDetayi : System.Web.UI.Page
    {
        Satis.Biz.UrunYonetimi.UrunQuery UrunSorgu;
        Satis.Biz.SiparisYonetimi.SiparisQuery SiparisSorgu;
        tblUyeler gelenUye;
        protected void Page_Load(object sender, EventArgs e)
        {
            UrunSorgu = new Biz.UrunYonetimi.UrunQuery();
            SiparisSorgu = new Biz.SiparisYonetimi.SiparisQuery();
            if (Session["LoggedUser"] != null)
            {
                lblsiparisdetayi.Text = Request.QueryString["ID"]+" NUMARALI SİPARİŞ DETAYLARI";
                gelenUye = (tblUyeler)Session["LoggedUser"];
                grdSiparis.DataSource = SiparisSorgu.SiparisiGetir(int.Parse(Request.QueryString["ID"]));
                grdSiparis.DataBind();
                lblToplamTutar.Text = SiparisSorgu.SiparisTutarDondur(int.Parse(Request.QueryString["ID"])).ToString();
            }
        }
    }
}