using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Data;

namespace Satis.web
{
    public partial class Hesabim : System.Web.UI.Page
    {
        tblUyeler gelenUye;
        Satis.Biz.UyeYonetimi.UyeQuery UyeSorgu;
        Satis.Biz.UyeYonetimi.UyeUpdate UyeGuncelle;
        Satis.Biz.GenelIslemler.KriptolamaIslemleri crypto;
        Satis.Biz.SiparisYonetimi.SiparisQuery SiparisSorgu;
        protected void Page_Load(object sender, EventArgs e)
        {
            UyeGuncelle = new Biz.UyeYonetimi.UyeUpdate();
            UyeSorgu = new Biz.UyeYonetimi.UyeQuery();
            crypto = new Biz.GenelIslemler.KriptolamaIslemleri();
            SiparisSorgu=new Biz.SiparisYonetimi.SiparisQuery();
            if (Session["LoggedUser"] != null)
            {
                gelenUye = (tblUyeler)Session["LoggedUser"];
            }
            if (!IsPostBack)
            {
                txtAdi.Text = gelenUye.UyeAdi;
                txtMail.Text = gelenUye.UyeMail;
                txtTelefon.Text = gelenUye.UyeTel;
                txtAdres.Text = gelenUye.UyeAdresi;
                txtIl.Text = gelenUye.AdresIl;
                txtIlce.Text = gelenUye.AdresIlce;
                txtTarih.Text = gelenUye.UyeDogTarihi.ToString();
                grdSiparis.DataSource = SiparisSorgu.UyeSiparisiGetir(gelenUye.UyeID);
                grdSiparis.DataBind();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            tblUyeler gunceluye = new tblUyeler { UyeAdi = txtAdi.Text, UyeAdresi = txtAdres.Text, UyeDogTarihi = DateTime.Parse(txtTarih.Text), UyeID = gelenUye.UyeID, UyeMail = txtMail.Text, UyeSifresi = gelenUye.UyeSifresi, UyeTel = txtTelefon.Text, ISMODDATE = DateTime.Now, ISCREDATE = gelenUye.ISCREDATE, UyeTipID = gelenUye.UyeTipID, ISACTIVE = true, ISDELETED = chkUyeSil.Checked, UyeCinsiyeti = gelenUye.UyeCinsiyeti, AdresIl = txtIl.Text, AdresIlce = txtIlce.Text };
            UyeGuncelle.Guncelle(gunceluye);
            Session.Add("LoggedUser", gunceluye);
            Response.Redirect(Request.RawUrl);
        }

        protected void btnSifreGuncelle_Click(object sender, EventArgs e)
        {
            if (crypto.SifreKriptola(txtEskiSifre.Text) != gelenUye.UyeSifresi)
            {
                lblSifre.Visible = true;
            }
            else
            {
                if (txtSifresi.Text == txtSifreTekrar.Text)
                {
                    UyeGuncelle.sifreGuncelle(gelenUye.UyeMail, crypto.SifreKriptola(txtSifresi.Text));
                    gelenUye.UyeSifresi = crypto.SifreKriptola(txtSifresi.Text);
                    Session.Add("LoggedUser", gelenUye);
                    Response.Redirect(Request.RawUrl);
                }
            }
        }
    }
}