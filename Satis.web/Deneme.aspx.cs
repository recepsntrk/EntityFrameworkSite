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
    public partial class Deneme : System.Web.UI.Page
    {
        Satis.Biz.UrunYonetimi.UrunQuery urunSorgu;
        protected void Page_Load(object sender, EventArgs e)
        {
            PageBase.GZipSIKISTIRMA(HttpContext.Current);
            urunSorgu = new Biz.UrunYonetimi.UrunQuery();
            KampanyaGetir();
        }
        private void KampanyaGetir()
        {
            List<KampanyaliUrun> gelenUrunler = urunSorgu.KampanyaliUrunGetir();
            //Literal1.Text = "<ul class='pxs_slider' style='height:700px'>";

            foreach (KampanyaliUrun item in gelenUrunler)
            {
                Literal1.Text += "<li><a href='ProductDetails.aspx?ID="+item.UrunID+"'><img src='" + item.resim + "' alt='First Image' /></a></li>";
                ltrThumbs.Text += "<li><img src='" + item.KucukResim + "' alt='First Image' /></a></li>";
            }
            //Literal1.Text += "</ul>";

        }
    }
}