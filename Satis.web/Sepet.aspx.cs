using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Data;
using Satis.Biz.UrunYonetimi;
using Satis.Biz.SiparisYonetimi;

namespace Satis.web
{
    public partial class Sepet : System.Web.UI.Page
    {
        Satis.Biz.UrunYonetimi.UrunQuery UrunSorgu;
        Satis.Biz.SatisSecenekleri.SepetQuery SepetSorgu;
        Satis.Biz.SiparisYonetimi.SiparisInsert Siparis;
        List<Satis.Biz.UrunYonetimi.Sepet> Sepetim;
        List<UrunDetails> urundetaylari;
        tblUyeler gelenUye;
        decimal Toplam;
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBase.GZipSIKISTIRMA(HttpContext.Current);
            SepetSorgu = new Biz.SatisSecenekleri.SepetQuery();
            UrunSorgu = new Biz.UrunYonetimi.UrunQuery();
            Siparis = new Biz.SiparisYonetimi.SiparisInsert();

            if (Session["LoggedUser"] != null)
            {
                gelenUye = (tblUyeler)Session["LoggedUser"];
            }
            else
            {
                Response.Redirect("Default.aspx");
            }

            List<Satis.Biz.UrunYonetimi.Sepet> Sepetim = SepetSorgu.UyeSepetGetir(gelenUye.UyeID);
            if (!IsPostBack)
            {
                GrdSepet.DataSource = SepetSorgu.UyeSepetGetir(gelenUye.UyeID);
                GrdSepet.DataBind();
                Toplam = 0;
                foreach (GridViewRow s in GrdSepet.Rows)
                {
                    decimal Fiyat = Convert.ToDecimal(s.Cells[4].Text);
                    int adet = SepetSorgu.AdetGetir(int.Parse(s.Cells[1].Text), gelenUye.UyeID);
                    ((TextBox)s.FindControl("txtAdet")).Text = adet.ToString();
                    s.Cells[6].Text = (adet * Fiyat).ToString();
                    Toplam = Toplam + Convert.ToDecimal(s.Cells[6].Text);
                    lblToplamTutar.Text = Toplam.ToString();
                    lblKdvDahil.Text = (Toplam * 1.18m).ToString();
                }
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow item in GrdSepet.Rows)
            {
                CheckBox chkDelete = (CheckBox)item.FindControl("chkDelete");
                if (chkDelete.Checked)
                {
                    SepetSorgu.SepetUrunSil(gelenUye.UyeID, int.Parse(item.Cells[1].Text));
                }
                else
                {
                    SepetSorgu.SepetUpdate(gelenUye.UyeID, int.Parse(item.Cells[1].Text), int.Parse(((TextBox)item.FindControl("txtAdet")).Text));
                    decimal Fiyat = Convert.ToDecimal(item.Cells[4].Text);
                    int adet = SepetSorgu.AdetGetir(int.Parse(item.Cells[1].Text), gelenUye.UyeID);
                    item.Cells[6].Text = (adet * Fiyat).ToString();
                    Toplam = Toplam + Convert.ToDecimal(item.Cells[6].Text);
                    lblToplamTutar.Text = "Toplam Tutar :" + Toplam.ToString() + " TL";
                    lblKdvDahil.Text = (Toplam * 1.18m).ToString();
                }
            }
            Response.Redirect("Sepet.aspx");
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            int SiparisID = Siparis.SiparisEkle(new tblSiparisler { UyeID = gelenUye.UyeID, DurumID = 1, SiparisToplamTutar = Convert.ToDecimal(lblKdvDahil.Text), ISACTIVE = true, ISDELETED = false, ISCREDATE = DateTime.Now, ISMODDATE = DateTime.Now, ISMODUSERID = gelenUye.UyeID });

            Sepetim = SepetSorgu.UyeSepetGetir(gelenUye.UyeID);

            if (Session["LoggedUser"] != null)
            {
                gelenUye = (tblUyeler)Session["LoggedUser"];
                Sepetim = SepetSorgu.UyeSepetGetir(gelenUye.UyeID);

                foreach (Satis.Biz.UrunYonetimi.Sepet item in Sepetim)
                {
                    urundetaylari = UrunSorgu.UrunDetaylari(item.UrunID);
                    foreach (UrunDetails q in urundetaylari)
                    {
                        Siparis.SiparisDetayiEkle(new tblSiparisDetaylari
                        {
                            SiparisID = SiparisID,
                            ProductID = q.UrunID,
                            SiparisTipID = q.KategoriID,
                            ISACTIVE = true,
                            ISDELETED = false,
                            ISCREDATE = DateTime.Now,
                            ISMODDATE = DateTime.Now,
                            ISMODUSERID = gelenUye.UyeID,
                            Adet = SepetSorgu.AdetGetir(q.UrunID, gelenUye.UyeID),
                            AlimDetayi = item.AlimDetayi
                        });
                    }
                }
                Response.Redirect("Siparis.aspx?ID=" + SiparisID);
            }
        }

        protected void chkTumu_CheckedChanged(object sender, EventArgs e)
        {
            
            foreach (GridViewRow item in GrdSepet.Rows)
            {

                if (chkTumu.Checked)
                {
                    CheckBox chkDelete = (CheckBox)item.FindControl("chkDelete");
                chkDelete.Checked = true;
                }
                else
                {
                    CheckBox chkDelete = (CheckBox)item.FindControl("chkDelete");
                    chkDelete.Checked = false;
                }
                
            }
        }
    }
}