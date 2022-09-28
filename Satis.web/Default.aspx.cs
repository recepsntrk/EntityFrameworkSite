using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Biz.UrunYonetimi;
using Satis.Data;
namespace Satis.web
{
    public partial class Default : System.Web.UI.Page
    {   Satis.Biz.UrunYonetimi.UrunGoster urunGoster;
        Satis.Biz.UrunYonetimi.UrunQuery urunSorgu;
        Satis.Biz.UyeYonetimi.UyeQuery UyeSorgu;
        Satis.Biz.UrunYonetimi.UrunSort UrunSiralama;
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBase.GZipSIKISTIRMA(HttpContext.Current);
            urunGoster = new Biz.UrunYonetimi.UrunGoster();
            urunSorgu = new Biz.UrunYonetimi.UrunQuery();
            UyeSorgu = new Biz.UyeYonetimi.UyeQuery();
            UrunSiralama = new Biz.UrunYonetimi.UrunSort();
            if (Request.QueryString["Sort"] == null)
            {lstContent.DataSource = urunSorgu.UrunGosterme();
                lstContent.DataBind();}
            else if (Request.QueryString["Sort"] == "PriceDESC")
            {lstContent.DataSource = UrunSiralama.AzalanFiyatUrunGoster();
                lstContent.DataBind();}
            else if (Request.QueryString["Sort"] == "PriceASC")
            {lstContent.DataSource = UrunSiralama.ArtanFiyatUrunGoster();
                lstContent.DataBind();}
            else if (Request.QueryString["Sort"] == "Date")
            {lstContent.DataSource = UrunSiralama.EnYeniUrunGoster();
                lstContent.DataBind();}
            else if (Request.QueryString["Sort"] == "Campaign")
            {lstContent.DataSource = UrunSiralama.IndirimliiUrunGoster();
                lstContent.DataBind();}
            KampanyaGetir();
            KampanyaGetir2();}
        private void KampanyaGetir()
        {
            //List<UrunGoster> gelenUrunler = urunSorgu.UrunGosterme();
            //Literal1.Text = "<ul>";
            //foreach (UrunGoster item in gelenUrunler)//Skitter slider
            //{
            //    Literal1.Text += "<li><a href='ProductDetails.aspx?ID="+item.UrunID+"'><img src='" + item.resim + "' class='cubeRandom' /></a><div class='label_text'><p>" + item.UrunAdi + " Fiyatı :" + item.KdvDahil + " TL" + "</p></div></li>";}
            //Literal1.Text += "</ul>";
            Literal1.Text = "<ul><li><a href='#'><img src='Images/Slider/img1.jpg' class='Fade' /></a><div class='label_text'><p>Adin Bilgisayar (www.adinbilgisayar.com)</p></div></li><li><a href='#'><img src='Images/Slider/img2.jpg' class='blindHeight' /></a><div class='label_text'><p>Adin Bilgisayar (www.adinbilgisayar.com)</p></div></li><li><a href='#'><img src='Images/Slider/img3.jpg' class='cubeHide' /></a><div class='label_text'><p>Adin Bilgisayar (www.adinbilgisayar.com)</p></div></li><li><a href='#'><img src='Images/Slider/img4.jpg' class='showBarsRandom' /></a><div class='label_text'><p>Adin Bilgisayar (www.adinbilgisayar.com)</p></div></li><li><a href='#'><img src='Images/Slider/slider2-image-1.jpg' class='blind' /></a><div class='label_text'><p>Adin Bilgisayar (www.adinbilgisayar.com)</p></div></li><li><a href='#'><img src='Images/Slider/slider2-image-2.jpg' class='horizontal' /></a><div class='label_text'><p>Adin Bilgisayar (www.adinbilgisayar.com)</p></div></li><li><a href='#'><img src='Images/Slider/slider2-image-3.jpg' class='directionRight' /></a><div class='label_text'><p>Adin Bilgisayar (www.adinbilgisayar.com)</p></div></li><li><a href='#'><img src='Images/Slider/img6.jpg' class='showBars' /></a><div class='label_text'><p>Adin Bilgisayar (www.adinbilgisayar.com)</p></div></li><li><a href='#'><img src='Images/Slider/img7.jpg' class='cubeStop' /></a><div class='label_text'><p>Adin Bilgisayar (www.adinbilgisayar.com)</p></div></li><li><a href='#'><img src='Images/Slider/img5.jpg' class='paralell' /></a><div class='label_text'><p>Adin Bilgisayar (www.adinbilgisayar.com)</p></div></li><li><a href='#'><img src='Images/Slider/img8.jpg' class='blindWidth' /></a><div class='label_text'><p>Adin Bilgisayar (www.adinbilgisayar.com)</p></div></li></ul>";
        
        }
        private void KampanyaGetir2()
        {List<KampanyaliUrun> gelenUrunler = urunSorgu.KampanyaliUrunGetir();
            foreach (KampanyaliUrun item in gelenUrunler)
            {LtrKampanya.Text += "<a style='color:white' href='ProductDetails.aspx?ID=" + item.UrunID + "'><img src='" + item.KucukResim + "' alt='Nikah Şekeri'/>" + item.KdvDahil + " TL</a>";}}//Magicscrool
        protected void DataPagerContent_PreRender(object sender, EventArgs e)
        {if (Request.QueryString["Sort"] == null)
            {lstContent.DataSource = urunSorgu.UrunGosterme();
                lstContent.DataBind();}
            else if (Request.QueryString["Sort"] == "PriceDESC")
            {lstContent.DataSource = UrunSiralama.AzalanFiyatUrunGoster();
                lstContent.DataBind();}
            else if (Request.QueryString["Sort"] == "PriceASC")
            {lstContent.DataSource = UrunSiralama.ArtanFiyatUrunGoster();
                lstContent.DataBind();}
            else if (Request.QueryString["Sort"] == "Date")
            {lstContent.DataSource = UrunSiralama.EnYeniUrunGoster();
                lstContent.DataBind();}
            else if (Request.QueryString["Sort"] == "Campaign")
            {lstContent.DataSource = UrunSiralama.IndirimliiUrunGoster();
                lstContent.DataBind();}}
        protected void btnEnYeniler_Click(object sender, EventArgs e)
        {Response.Redirect("Default.aspx?Sort=Date");}
        protected void btnIndirim_Click(object sender, EventArgs e)
        {Response.Redirect("Default.aspx?Sort=Campaign");}
        protected void btnFiyatAzalan_Click(object sender, EventArgs e)
        {Response.Redirect("Default.aspx?Sort=PriceDESC");}
        protected void btnFiyatArtan_Click1(object sender, EventArgs e)
        {Response.Redirect("Default.aspx?Sort=PriceASC");}}
}