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
    public partial class wingtheair : System.Web.UI.Page
    {
        Satis.Biz.UrunYonetimi.UrunQuery urunSorgu;
        protected void Page_Load(object sender, EventArgs e)
        {
            urunSorgu = new Biz.UrunYonetimi.UrunQuery();
            List<UrunGoster> gelenUrunler = urunSorgu.UrunGosterme();

            ltrslide.Text = "<ul>";
            foreach (UrunGoster q in gelenUrunler)
            {
                ltrslide.Text += "<li><a href='ProductDetails.aspx?ID=" + q.UrunID + "'><img style='width:980px;height:418px' src='" + q.resim + "' alt='' /></a></li>";

            } ltrslide.Text += "</ul>";

            ltrurun.Text = "<ul>";
            foreach (UrunGoster item in gelenUrunler)
            {
                ltrurun.Text += "<li>";
                ltrurun.Text += "<div class='image'><a href='ProductDetails.aspx?ID=" + item.UrunID + "'><img style='width:190px;height:160px' src='" + item.KucukResim + "' alt='' /></a></div><p>Urun Adı: <span>" + item.UrunAdi + "</span><br/>Fiyatı: <span>" + item.Fiyati + " TL</span><br/></p><p class='price'>KDV Dahil: <strong>" + item.KdvDahil + " TL</strong></p></li>";
            } ltrurun.Text += "</ul>";
        }
    }
}