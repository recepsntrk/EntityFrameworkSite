using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Biz.UrunYonetimi;

namespace Satis.web
{
    public partial class CategorysProductList : System.Web.UI.Page
    {
        Satis.Biz.UrunYonetimi.UrunQuery UrunSorgu;
        Satis.Biz.UrunYonetimi.UrunSort UrunSiralama;

        protected void Page_Load(object sender, EventArgs e)
        {
            PageBase.GZipSIKISTIRMA(HttpContext.Current);
            UrunSorgu = new Biz.UrunYonetimi.UrunQuery();
            UrunSiralama = new Biz.UrunYonetimi.UrunSort();

            if (int.Parse(Request.QueryString["ID"]) >= 100 && Request.QueryString["Sort"] == null)
            {
                lstContent.DataSource = UrunSorgu.KategoriyeGoreUrunGoster(int.Parse(Request.QueryString["ID"]));
                lstContent.DataBind();
            }
            else if (int.Parse(Request.QueryString["ID"]) >= 100 && Request.QueryString["Sort"] == "PriceDESC")
            {
                lstContent.DataSource = UrunSiralama.KategoriyeGoreAzalanFiyatUrunGoster(int.Parse(Request.QueryString["ID"]));
                lstContent.DataBind();
            }
            else if (int.Parse(Request.QueryString["ID"]) >= 100 && Request.QueryString["Sort"] == "PriceASC")
            {
                lstContent.DataSource = UrunSiralama.KategoriyeGoreArtanFiyatUrunGoster(int.Parse(Request.QueryString["ID"]));
                lstContent.DataBind();
            }
            else if (int.Parse(Request.QueryString["ID"]) >= 100 && Request.QueryString["Sort"] == "Date")
            {
                lstContent.DataSource = UrunSiralama.KategoriyeGoreEnYeniUrunGoster(int.Parse(Request.QueryString["ID"]));
                lstContent.DataBind();
            }
            else if (int.Parse(Request.QueryString["ID"]) >= 100 && Request.QueryString["Sort"] == "Campaign")
            {
                lstContent.DataSource = UrunSiralama.KategoriyeGoreIndirimliiUrunGoster(int.Parse(Request.QueryString["ID"]));
                lstContent.DataBind();
            }
            KampanyaGetir();
        }

        protected void DataPagerContent_PreRender(object sender, EventArgs e)
        {
            if (int.Parse(Request.QueryString["ID"]) >= 100 && Request.QueryString["Sort"] == null)
            {
                lstContent.DataSource = UrunSorgu.KategoriyeGoreUrunGoster(int.Parse(Request.QueryString["ID"]));
                lstContent.DataBind();
            }
            else if (int.Parse(Request.QueryString["ID"]) >= 100 && Request.QueryString["Sort"] == "PriceDESC")
            {
                lstContent.DataSource = UrunSiralama.KategoriyeGoreAzalanFiyatUrunGoster(int.Parse(Request.QueryString["ID"]));
                lstContent.DataBind();
            }
            else if (int.Parse(Request.QueryString["ID"]) >= 100 && Request.QueryString["Sort"] == "PriceASC")
            {
                lstContent.DataSource = UrunSiralama.KategoriyeGoreArtanFiyatUrunGoster(int.Parse(Request.QueryString["ID"]));
                lstContent.DataBind();
            }
            else if (int.Parse(Request.QueryString["ID"]) >= 100 && Request.QueryString["Sort"] == "Date")
            {
                lstContent.DataSource = UrunSiralama.KategoriyeGoreEnYeniUrunGoster(int.Parse(Request.QueryString["ID"]));
                lstContent.DataBind();
            }
            else if (int.Parse(Request.QueryString["ID"]) >= 100 && Request.QueryString["Sort"] == "Campaign")
            {
                lstContent.DataSource = UrunSiralama.KategoriyeGoreIndirimliiUrunGoster(int.Parse(Request.QueryString["ID"]));
                lstContent.DataBind();
            }
        }

        protected void btnFiyatAzalan_Click(object sender, EventArgs e)
        {
            Response.Redirect("CategorysProductList.aspx?ID=" + int.Parse(Request.QueryString["ID"]) + "&Sort=PriceDESC");
        }

        protected void btnFiyatArtan_Click(object sender, EventArgs e)
        {
            Response.Redirect("CategorysProductList.aspx?ID=" + int.Parse(Request.QueryString["ID"]) + "&Sort=PriceASC");
        }

        protected void btnEnYeniler_Click(object sender, EventArgs e)
        {
            Response.Redirect("CategorysProductList.aspx?ID=" + int.Parse(Request.QueryString["ID"]) + "&Sort=Date");
        }

        protected void btnIndirim_Click(object sender, EventArgs e)
        {
            Response.Redirect("CategorysProductList.aspx?ID=" + int.Parse(Request.QueryString["ID"]) + "&Sort=Campaign");
        }


        private void KampanyaGetir()
        {
            List<KampanyaliUrun> gelenUrunler = UrunSorgu.KampanyaliUrunGetir();
            
            foreach (KampanyaliUrun item in gelenUrunler)
            {
                Literal1.Text += "<a style='color:white' href='ProductDetails.aspx?ID=" + item.UrunID + "'><img src='" + item.KucukResim + "'/>"+item.KdvDahil+" TL</a>";
            }
            
        }
       

        
    }
}