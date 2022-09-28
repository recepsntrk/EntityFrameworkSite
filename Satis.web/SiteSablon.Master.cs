using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Data;
using Satis.Biz;
using Satis.Biz.GenelIslemler;
using Satis.Biz.UyeYonetimi;

namespace Satis.web
{
    public partial class SiteSablon : System.Web.UI.MasterPage
    {
        Satis.Biz.UrunYonetimi.UrunQuery urunSorgu;
        Satis.Biz.UyeYonetimi.UyeQuery UyeSorgu;
        Satis.Biz.KategoriYonetimi.CategoryQuery KategoriSorgu;
        Satis.Biz.AltKategoriYonetimi.SubQuery AltKategoriSorgu;
        Satis.Biz.SatisSecenekleri.SepetQuery SepetSorgu;
        KriptolamaIslemleri crypto = new KriptolamaIslemleri();
        tblUyeler gelenUye;
        int UyeID;
        protected void Page_Load(object sender, EventArgs e)
        {
            AltKategoriSorgu = new Biz.AltKategoriYonetimi.SubQuery();
            KategoriSorgu = new Biz.KategoriYonetimi.CategoryQuery();
            urunSorgu = new Biz.UrunYonetimi.UrunQuery();
            UyeSorgu = new Satis.Biz.UyeYonetimi.UyeQuery();
            SepetSorgu = new Biz.SatisSecenekleri.SepetQuery();
            if (!IsPostBack)
            {
                if (Request.Cookies["LoginBilgi"] != null)
                {
                    HttpCookie gelenCookie = Request.Cookies["LoginBilgi"];
                    UyeID = UyeSorgu.UyeKontrol(gelenCookie["UyeMaili"], gelenCookie["Sifre"]);
                    if (UyeID > 0)
                    {
                        gelenUye = UyeSorgu.UyeDetayiGetir(UyeID);
                        Session.Add("LoggedUser", gelenUye);
                    }
                }
                
            }
            if (Session["LoggedUser"] != null)
            {
                gelenUye = (tblUyeler)Session["LoggedUser"];
                if (gelenUye.UyeTipID == 1)
                {
                    lnkHesap.Text = "Admin Paneli";
                    lnkHesap.PostBackUrl = "Admin/default.aspx";
                }
                else if (gelenUye.UyeTipID == 2)
                {
                    lnkHesap.Text = "Moderatör Paneli";
                    lnkHesap.PostBackUrl = "Moderator/Default.aspx";
                }
                else if (gelenUye.UyeTipID == 3)
                {
                    lnkHesap.Text = "Kullanıcı Paneli";
                    lnkHesap.PostBackUrl = "Hesabim.aspx";
                }
                lblHosGeldiniz.Text = "Hoş Geldiniz " + gelenUye.UyeAdi;
                List<Satis.Biz.UrunYonetimi.Sepet> Sepetim = SepetSorgu.UyeSepetGetir(gelenUye.UyeID);
                lnkSepet.Text = "Sepetim(" + Sepetim.Count.ToString() + " ürün)";
                pnlLogin.Visible = false;
                pnlUser.Visible = true;
                GrdSepet.DataSource = SepetSorgu.UyeSepetGetir(gelenUye.UyeID);
                GrdSepet.DataBind();
            }
            KategorileriDoldur();
            lblOnline.Text = "Online Ziyaretçi Sayısı :" + Application["OnlineKisiler"].ToString();
        }
        private void KategorileriDoldur()
        {
            List<tblCategory> gelenKategoriler = KategoriSorgu.KategorileriGetir();
            ltrKategoriler.Text = "<ul id='main-nav'>";
            foreach (tblCategory kategoriler in gelenKategoriler)
            {
                ltrKategoriler.Text += "<li><a class='nav-top-item' href='CategorysProductList.aspx?ID=" + kategoriler.CategoryID + "'>" + kategoriler.CategoryName + "</a>";

                List<tblSubCategory> altKategoriler = AltKategoriSorgu.AltKategorileriGetir(kategoriler.CategoryID);
                ltrKategoriler.Text += "<ul>";
                foreach (tblSubCategory AltKategori in altKategoriler)
                {
                    ltrKategoriler.Text += "<li><a href='SubCategorysProductList.aspx?ID=" + AltKategori.SubCategoryID + "'>" + AltKategori.SubCategoryName + "</a></li>";
                }
                ltrKategoriler.Text += "</ul></li>";
            }
            ltrKategoriler.Text += "</ul>";
        }
            
        protected void lnkSifreUnuttum_Click(object sender, EventArgs e)
        {
            Response.Redirect("SifreHatirlat.aspx");
        }
        protected void lnkHesap_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hesabim.aspx");
        }
        protected void lnkCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            pnlUser.Visible = false;
            pnlLogin.Visible = true;
            HttpCookie gelenCookie = new HttpCookie("LoginBilgi");
            gelenCookie["UyeMaili"] = ClearSqlInjection(txtUyeAdi.Text);
            gelenCookie["Sifre"] = crypto.SifreKriptola(ClearSqlInjection(txtSifre.Text));
            gelenCookie.Expires = DateTime.Now.AddDays(-2);
            Response.Cookies.Add(gelenCookie);
        }
        protected void lnkFirsat_Click(object sender, EventArgs e)
        {
            Response.Redirect("Firsatlar.aspx?UyeID=" + UyeID);
        }
        protected void lnkSepet_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sepet.aspx");
        }
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            if (chkHatirla.Checked)
            {
                HttpCookie cook = new HttpCookie("LoginBilgi");
                cook["UyeMaili"] = ClearSqlInjection(txtUyeAdi.Text);
                cook["Sifre"] = crypto.SifreKriptola(ClearSqlInjection(txtSifre.Text));
                cook.Expires = DateTime.Now.AddDays(20);
                Response.Cookies.Add(cook);
            }
            UyeID = UyeSorgu.UyeKontrol(ClearSqlInjection(txtUyeAdi.Text), crypto.SifreKriptola(ClearSqlInjection(txtSifre.Text)));
            if (UyeID > 0)
            {
                gelenUye = UyeSorgu.UyeDetayiGetir(UyeID);

                lblHosGeldiniz.Text = "Hoş Geldiniz " + gelenUye.UyeAdi;
                Session.Add("LoggedUser", gelenUye);
                if (gelenUye.UyeTipID == 1)
                {
                    lnkHesap.Text = "Admin Paneli";
                    lnkHesap.PostBackUrl = "Admin/default.aspx";
                }
                else if (gelenUye.UyeTipID == 2)
                {
                    lnkHesap.Text = "Moderatör Paneli";
                    lnkHesap.PostBackUrl = "Moderator/Default.aspx";
                }
                else if (gelenUye.UyeTipID == 3)
                {
                    lnkHesap.Text = "Kullanıcı Paneli";
                    lnkHesap.PostBackUrl = "Hesabim.aspx";
                }
                List<Satis.Biz.UrunYonetimi.Sepet> Sepetim = SepetSorgu.UyeSepetGetir(gelenUye.UyeID);
                lnkSepet.Text = "Sepetim(" + Sepetim.Count.ToString() + " ürün)";
                pnlLogin.Visible = false;
                pnlUser.Visible = true;
            }
        }
        protected void btnUyeOl_Click(object sender, EventArgs e)
        {
            if (chkSozlesme.Checked)
            {
                if (UyeSorgu.mailKontrol(txtMail.Text) != 0)
                {
                    lblMailVar.Visible = true;
                }
                else
                {
                    string cinsiyet = "";
                    if (rbErkek.Checked)
                    {
                        cinsiyet = "E";
                    }
                    else if (rbKadin.Checked)
                    {
                        cinsiyet = "K";
                    }
                    if (txtSifresi.Text == txtSifreTekrar.Text)
                    {
                        int UyeID = 0;
                        UyeInsert uyeKayit = new UyeInsert();
                        try
                        {
                            UyeID = uyeKayit.UyeKaydet(new tblUyeler
                            {
                                UyeAdi = txtAdi.Text,
                                UyeSifresi = crypto.SifreKriptola(ClearSqlInjection(txtSifresi.Text)),
                                UyeMail = txtMail.Text,
                                UyeTel = txtTelefon.Text,
                                UyeCinsiyeti = cinsiyet,
                                UyeTipID = 3,
                                UyeAdresi = txtAdres.Text,
                                AdresIl = txtIl.Text,
                                AdresIlce = txtIlce.Text,
                                ISCREDATE = DateTime.Now,
                                ISMODDATE = DateTime.Now,
                                ISACTIVE = true,
                                ISDELETED = false,
                                UyeDogTarihi = DateTime.Parse(txtTarih.Text)
                            });
                        }
                        catch
                        {
                            Response.Redirect("Default.aspx");
                        }
                        if (UyeID > 0)
                        {
                            gelenUye = UyeSorgu.UyeDetayiGetir(UyeID);
                            lblHosGeldiniz.Text = "Hoş Geldiniz " + gelenUye.UyeAdi;
                            Session.Add("LoggedUser", gelenUye);
                            lnkHesap.Text = "Kullanıcı Paneli";
                            lnkHesap.PostBackUrl = "Hesabim.aspx";
                            List<Satis.Biz.UrunYonetimi.Sepet> Sepetim = SepetSorgu.UyeSepetGetir(gelenUye.UyeID);
                            lnkSepet.Text = "Sepetim(" + Sepetim.Count.ToString() + " ürün)";
                            pnlLogin.Visible = false;
                            pnlUser.Visible = true;
                        }
                    }
                    else
                    {
                        lblSifreUyusmuyor.Visible = true;
                    }
                }
            }
        }
        public static string ClearSqlInjection(string text)
        {
            text = text.Replace("&gt;", "");
            text = text.Replace("&lt;", "");
            text = text.Replace("--", "");
            text = text.Replace("'", "");
            text = text.Replace("char ", "");
            text = text.Replace("delete ", "");
            text = text.Replace("insert ", "");
            text = text.Replace("update ", "");
            text = text.Replace("select ", "");
            text = text.Replace("truncate ", "");
            text = text.Replace("union ", "");
            text = text.Replace("script ", "");
            return text;
        }

    }
}