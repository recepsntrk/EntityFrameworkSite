using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Biz.UrunYonetimi;
using Satis.Data;
using Satis.Biz.SiparisYonetimi;

namespace Satis.web
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        Satis.Biz.SatisSecenekleri.SepetInsert Sepetekle;
        Satis.Biz.UrunYonetimi.UrunQuery UrunSorgu;
        Satis.Biz.SatisSecenekleri.SepetQuery SepetSorgu;
        Satis.Biz.SiparisYonetimi.SiparisInsert SiparisInsert;
        List<Satis.Biz.UrunYonetimi.Sepet> Sepetim;
        List<UrunDetails> urundetaylari;
        tblUyeler gelenUye;
        int UrunID;
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBase.GZipSIKISTIRMA(HttpContext.Current);
            UrunID = int.Parse(Request.QueryString["ID"]);
            if (Session["LoggedUser"] != null)
            {
                gelenUye = (tblUyeler)Session["LoggedUser"];
            }
            Sepetekle = new Biz.SatisSecenekleri.SepetInsert();
            UrunSorgu = new Biz.UrunYonetimi.UrunQuery();
            SepetSorgu = new Biz.SatisSecenekleri.SepetQuery();
            SepetSorgu = new Biz.SatisSecenekleri.SepetQuery();
            SiparisInsert = new Biz.SiparisYonetimi.SiparisInsert();
            urundetaylari = UrunSorgu.UrunDetaylari(UrunID);

            if (Request.QueryString["ID"] != null && int.Parse(Request.QueryString["ID"]) != 2)
            {
                DtListDetail.DataSource = urundetaylari;
                DtListDetail.DataBind();

                foreach (UrunDetails item in urundetaylari)
                {
                    imgBuyuk.ImageUrl = item.Resim1;
                }
            }
            foreach (UrunDetails q in urundetaylari)
            {
                if (q.KategoriID == 100)
                {
                    pnlNikah.Visible = true;
                    pnlSecenek.Visible = true;
                    imgNikah.ImageUrl = q.KucukResim;
                }
                else if (q.KategoriID == 101)
                {
                    pnlBebek.Visible = true;
                    pnlSecenek.Visible = true;
                    imgBebek.ImageUrl = q.KucukResim;
                }
                else if (q.KategoriID == 102)
                {
                    pnlSunnet.Visible = true;
                    pnlSecenek.Visible = true;
                    imgSunnet.ImageUrl = q.KucukResim;
                }
                else
                {
                    pnlDiger.Visible = true;
                    pnlSecenek.Visible = false;
                }
            }
        }
        protected void btnAciklama_Click(object sender, EventArgs e)
        {
            pnlGenel.Visible = false;
            pnlOdeme.Visible = false;
            pnlOzellikler.Visible = false;
            pnlAciklama.Visible = true;
            pnlRight.Visible = false;
        }
        protected void btnGenel_Click(object sender, EventArgs e)
        {
            pnlGenel.Visible = true;
            pnlOdeme.Visible = false;
            pnlOzellikler.Visible = false;
            pnlAciklama.Visible = false;
            pnlRight.Visible = true;
        }
        protected void btnProductProperty_Click(object sender, EventArgs e)
        {
            pnlGenel.Visible = false;
            pnlOdeme.Visible = false;
            pnlOzellikler.Visible = true;
            pnlAciklama.Visible = false;
            pnlRight.Visible = false;
        }
        protected void btnOdemeSecenekleri_Click(object sender, EventArgs e)
        {
            pnlGenel.Visible = false;
            pnlOdeme.Visible = true;
            pnlOzellikler.Visible = false;
            pnlAciklama.Visible = false;
            pnlRight.Visible = false;
        }
        protected void btnSepeteEkle_Click(object sender, EventArgs e)
        {
            string miknatis;
            decimal UrunTutari = 2;
            foreach (UrunDetails item in urundetaylari)
            {
                if (item.UrunID == UrunID)
                {
                    UrunTutari = item.Fiyati;
                    break;
                }
            }
            if (chkMiknatis.Checked)
            {
                miknatis = "Var";
                UrunTutari += 0.1m;
            }
            else
            {
                miknatis = "Yok";
            }
            if (rblSeker.SelectedValue == "Cikolata")
            {
                UrunTutari += 0.20m;
            }

            if (Session["LoggedUser"] == null)
            {
                lblInfo.Text = "Üye girişi yapmalısınız.";
            }
            else
            {
                Sepetim = SepetSorgu.UyeSepetGetir(gelenUye.UyeID);
                foreach (UrunDetails s in urundetaylari)
                {
                    if (s.KategoriID == 100)
                    {
                        if (Sepetim.Count == 0)
                        {
                            Sepetekle.UyeSepetEkle(new Data.tblSepet { Adet = int.Parse(ddlAdet.SelectedValue), ProductID = UrunID, UyeID = gelenUye.UyeID, ISACTIVE = true, ISDELETED = false, ISCREDATE = DateTime.Now, AlimDetayi = "Gelin Adı : " + txtGelinAdi.Text + " - Damat Adı : " + txtDamatAdi.Text + " - Nikah Tarihi : " + txtNikahTarihi.Text + " - Şeker : " + rblSeker.SelectedValue + " - Mıknatıs : " + miknatis + " - Not : " + txtNot.Text, Tutar = UrunTutari });
                            
                            lblInfo.Text = "Ürün Sepete Eklendi";
                            break;
                        }
                        else
                        {
                            foreach (Satis.Biz.UrunYonetimi.Sepet item in Sepetim)
                            {
                                bool isurun = false;
                                foreach (Satis.Biz.UrunYonetimi.Sepet q in Sepetim)
                                {
                                    if (int.Parse(Request.QueryString["ID"]) == q.UrunID)
                                    {
                                        isurun = true;
                                        break;
                                    }
                                }
                                if (isurun == false)
                                {
                                    Sepetekle.UyeSepetEkle(new Data.tblSepet { Adet = int.Parse(ddlAdet.SelectedValue), ProductID = UrunID, UyeID = gelenUye.UyeID, ISACTIVE = true, ISDELETED = false, ISCREDATE = DateTime.Now, AlimDetayi = "Gelin Adı : " + txtGelinAdi.Text + " - Damat Adı : " + txtDamatAdi.Text + " - Nikah Tarihi : " + txtNikahTarihi.Text + " - Şeker : " + rblSeker.SelectedValue + " - Mıknatıs : " + miknatis + " - Not:" + txtNot.Text, Tutar = UrunTutari });
                                    WebMsgBox.Show("Sepete Eklendi");
                                    lblInfo.Text = "Ürün Sepete Eklendi";
                                    break;
                                }
                                else
                                {
                                    lblInfo.Text = "Ürün sepetinizde zaten mevcut";
                                    break;
                                }
                            }
                        }
                    }
                    else if (s.KategoriID == 101)
                    {
                        if (Sepetim.Count == 0)
                        {
                            Sepetekle.UyeSepetEkle(new Data.tblSepet { Adet = int.Parse(ddlAdet.SelectedValue), ProductID = UrunID, UyeID = gelenUye.UyeID, ISACTIVE = true, ISDELETED = false, ISCREDATE = DateTime.Now, AlimDetayi = "Bebek Adı : " + txtBebekAdi.Text + " - Doğum Tarihi : " + txtDogumTarihi.Text + " - Şeker : " + rblSeker.SelectedValue + " - Mıknatıs : " + miknatis + " - Not : " + txtNot.Text, Tutar = UrunTutari });
                            lblInfo.Text = "Ürün Sepete Eklendi";
                        }
                        else
                        {
                            foreach (Satis.Biz.UrunYonetimi.Sepet item in Sepetim)
                            {
                                bool isurun = false;
                                foreach (Satis.Biz.UrunYonetimi.Sepet q in Sepetim)
                                {
                                    if (int.Parse(Request.QueryString["ID"]) == q.UrunID)
                                    {
                                        isurun = true;
                                        break;
                                    }
                                }
                                if (isurun == false)
                                {
                                    Sepetekle.UyeSepetEkle(new Data.tblSepet { Adet = int.Parse(ddlAdet.SelectedValue), ProductID = UrunID, UyeID = gelenUye.UyeID, ISACTIVE = true, ISDELETED = false, ISCREDATE = DateTime.Now, AlimDetayi = "Bebek Adı : " + txtBebekAdi.Text + " - Doğum Tarihi : " + txtDogumTarihi.Text + " - Şeker : " + rblSeker.SelectedValue + " - Mıknatıs : " + miknatis + " - Not : " + txtNot.Text, Tutar = UrunTutari });
                                    lblInfo.Text = "Ürün Sepete Eklendi";
                                    break;
                                }
                                else
                                {
                                    lblInfo.Text = "Ürün sepetinizde zaten mevcut";
                                    break;
                                }
                            }
                        }
                    }
                    else if (s.KategoriID == 102)
                    {
                        if (Sepetim.Count == 0)
                        {
                            Sepetekle.UyeSepetEkle(new Data.tblSepet { Adet = int.Parse(ddlAdet.SelectedValue), ProductID = UrunID, UyeID = gelenUye.UyeID, ISACTIVE = true, ISDELETED = false, ISCREDATE = DateTime.Now, AlimDetayi = "Çocuk Adı : " + txtCocukAdi.Text + " -Sünnet Tarihi : " + txtSunnetTarihi.Text + " - Şeker : " + rblSeker.SelectedValue + " -Mıknatıs : " + miknatis + " - Not : " + txtNot.Text, Tutar = UrunTutari });
                            lblInfo.Text = "Ürün Sepete Eklendi";
                            break;
                        }
                        else
                        {
                            foreach (Satis.Biz.UrunYonetimi.Sepet item in Sepetim)
                            {
                                bool isurun = false;
                                foreach (Satis.Biz.UrunYonetimi.Sepet q in Sepetim)
                                {
                                    if (int.Parse(Request.QueryString["ID"]) == q.UrunID)
                                    {
                                        isurun = true;
                                        break;
                                    }
                                }
                                if (isurun == false)
                                {
                                    Sepetekle.UyeSepetEkle(new Data.tblSepet { Adet = int.Parse(ddlAdet.SelectedValue), ProductID = UrunID, UyeID = gelenUye.UyeID, ISACTIVE = true, ISDELETED = false, ISCREDATE = DateTime.Now, AlimDetayi = "Çocuk Adı : " + txtCocukAdi.Text + " - Sünnet Tarihi : " + txtSunnetTarihi.Text + " - Şeker : " + rblSeker.SelectedValue + " - Mıknatıs : " + miknatis + " - Not : " + txtNot.Text, Tutar = UrunTutari });
                                    lblInfo.Text = "Ürün Sepete Eklendi";
                                    break;
                                }
                                else
                                {
                                    lblInfo.Text = "Ürün sepetinizde zaten mevcut";
                                    break;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (Sepetim.Count == 0)
                        {
                            Sepetekle.UyeSepetEkle(new Data.tblSepet { Adet = int.Parse(ddlAdet.SelectedValue), ProductID = UrunID, UyeID = gelenUye.UyeID, ISACTIVE = true, ISDELETED = false, ISCREDATE = DateTime.Now, AlimDetayi = " Not : " + txtNotDiger.Text, Tutar = UrunTutari });
                            lblInfo.Text = "Ürün Sepete Eklendi";
                        }
                        else
                        {
                            foreach (Satis.Biz.UrunYonetimi.Sepet item in Sepetim)
                            {
                                bool isurun = false;
                                foreach (Satis.Biz.UrunYonetimi.Sepet q in Sepetim)
                                {
                                    if (int.Parse(Request.QueryString["ID"]) == q.UrunID)
                                    {
                                        isurun = true;
                                        break;
                                    }
                                }
                                if (isurun == false)
                                {
                                    Sepetekle.UyeSepetEkle(new Data.tblSepet { Adet = int.Parse(ddlAdet.SelectedValue), ProductID = UrunID, UyeID = gelenUye.UyeID, ISACTIVE = true, ISDELETED = false, ISCREDATE = DateTime.Now, AlimDetayi = " Not : " + txtNotDiger.Text, Tutar = UrunTutari });
                                    lblInfo.Text = "Ürün Sepete Eklendi";
                                    break;
                                }
                                else
                                {
                                    lblInfo.Text = "Ürün sepetinizde zaten mevcut";
                                    break;
                                }
                            }
                        }
                    }
                }
                if (lblInfo.Text == "Ürün Sepete Eklendi")
                {
                    WebMsgBox.Show("Sepete Eklendi");
                    System.Threading.Thread.Sleep(3000);
                    Response.Redirect(HttpContext.Current.Request.RawUrl);
                }
            }

        }
    }
}