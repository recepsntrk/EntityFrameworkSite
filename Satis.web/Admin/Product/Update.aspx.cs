using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Biz.AdminIslemleri;
using Satis.Data;

namespace Satis.web.Admin.Product
{
    public partial class Update : System.Web.UI.Page
    {

        Satis.Biz.AdminIslemleri.Query UrunSorgu;
        Satis.Biz.AdminIslemleri.Update UrunGuncelleme;
        tblUyeler gelenUye;
        int UrunID;
        protected void Page_Load(object sender, EventArgs e)
        {
            UrunSorgu = new Satis.Biz.AdminIslemleri.Query();
            UrunGuncelleme = new Biz.AdminIslemleri.Update();
            gelenUye = (tblUyeler)Session["LoggedUser"];
            if (Request.QueryString["ID"] != null)
            {
                UrunID = int.Parse(Request.QueryString["ID"]);
            }
            else
            {
                Response.Redirect("ProductList.aspx");
            }
            List<TumUrunler> UrunBilgileri = UrunSorgu.UpdateIcinUrunleriGetir(UrunID);
            foreach (TumUrunler q in UrunBilgileri)
            {
                if (!IsPostBack)
                {
                    txtProductName.Text = q.UrunAdi;
                    txtPrice.Text = q.Fiyati.ToString();
                    txtSize.Text = q.Boyutu;
                    txtStock.Text = q.Stogu.ToString();
                    imgresim.ImageUrl = q.Resim;
                    txtOldPrice.Text = q.EskiFiyati.ToString();
                    imgkucukresim.ImageUrl = q.KucukResim;
                    txtDetails.Text = q.Detayi;
                    chkKampanyali.Checked = (bool)q.Kampanyalimi;
                    chkAktif.Checked = (bool)q.Aktif;
                    chkSil.Checked = (bool)q.Silinmis;
                    txtListPrice.Text = q.KdvDahil.ToString();
                }
            }
        }

        protected void btnPictureUpdate_Click(object sender, EventArgs e)
        {
            string resimKlasoru = Server.MapPath("~/Images/Products");
            List<TumUrunler> UrunBilgileri = UrunSorgu.UpdateIcinUrunleriGetir(UrunID);
            string resim="";
            string kucuk="";
            foreach (TumUrunler q in UrunBilgileri)
            {
                resim = q.Resim;
                kucuk = q.KucukResim;
            }

            if (fluImage1.HasFile)
            {
                fluImage1.SaveAs(resimKlasoru + fluImage1.FileName);
                resim = "Images/Products/" + fluImage1.FileName;
            }
            if (Fluthumbs1.HasFile)
            {
                Fluthumbs1.SaveAs(resimKlasoru + "/Thumbs/" + Fluthumbs1.FileName);
                kucuk = "Images/Products/Thumbs/" + Fluthumbs1.FileName;
            }
            try
            {
                UrunGuncelleme.ResimGuncelle(UrunID,resim,kucuk,gelenUye.UyeID);
            }
            catch
            {
                lblHata.Text = "BİR HATA OLUŞTU";
            }
            Response.Redirect("~/Admin/Product/ProductList.aspx");
        }

        protected void btnProductUpdate_Click(object sender, EventArgs e)
        {
            decimal? EskiFiyat;
            if (txtOldPrice.Text == "")
            {
                EskiFiyat = null;
            }
            else
            {
                EskiFiyat = Convert.ToDecimal(txtOldPrice.Text);
            }
            try
            {
                UrunGuncelleme.UrunGuncelle(UrunID, txtProductName.Text, Convert.ToDecimal(txtPrice.Text), EskiFiyat, int.Parse(txtStock.Text), txtSize.Text, chkAktif.Checked, chkSil.Checked, chkKampanyali.Checked, gelenUye.UyeID, txtDetails.Text);
            }
            catch
            {
                lblHata.Text = "Hata oluştu lütfen tekrar deneyin";
                Response.Redirect("~/Admin/Product/Update.aspx?ID=" + this.Request.QueryString["ID"]);
            }
            Response.Redirect("~/Admin/Product/ProductList.aspx");
        }
    }
}