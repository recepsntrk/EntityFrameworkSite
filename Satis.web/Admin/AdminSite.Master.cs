using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Data;
using System.Drawing;

namespace Satis.web.Admin
{
    public partial class AdminSite : System.Web.UI.MasterPage
    {
        Satis.Biz.UyeYonetimi.UyeQuery UyeSorgu;
        tblUyeler gelenUye;
        protected void Page_Load(object sender, EventArgs e)
        {
            UyeSorgu = new Biz.UyeYonetimi.UyeQuery();
            if (Session["LoggedUser"] != null)
            {
                gelenUye = (tblUyeler)Session["LoggedUser"];
                if (gelenUye.UyeTipID != 1)
                {
                    Response.Redirect("~/Default.aspx");
                }
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        protected void btnProductAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Product/ProductAdd.aspx");
        }

        protected void btnProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Product/ProductList.aspx");
        }

        protected void btnUserList_Click(object sender, EventArgs e)
        {

        }

        protected void btnCategory_Click(object sender, EventArgs e)
        {

        }

        protected void btnSubCategory_Click(object sender, EventArgs e)
        {

        }

        protected void btnProductDelete_Click(object sender, EventArgs e)
        {
            Satis.Biz.GenelIslemler.MailIslemleri mailGonder;
            mailGonder = new Biz.GenelIslemler.MailIslemleri();
            mailGonder.YasGunuMailGonder("recep", "sir__recep@hotmail.com");
        }

        protected void btnSiparisListele_Click(object sender, EventArgs e)
        {

        }

        protected void Calendar1_DayRender1(object sender, DayRenderEventArgs e)
        {
            List<tblUyeler> uyelerimiz = UyeSorgu.UyeleriGetir();
            foreach (tblUyeler item in uyelerimiz)
            {
                //Bu kullanicilarimizi sorgulayip getirdikten sonra calender kontrolu ile kullanicimizin dogum gunun gun ve ay bilgisini kontol edip Calender kontrolunu customize ediyoruz.
                if (e.Day.Date.Month == item.UyeDogTarihi.Value.Month && e.Day.Date.Day == item.UyeDogTarihi.Value.Day)
                {
                    e.Cell.BackColor = Color.DarkGray;
                    e.Cell.ForeColor = Color.White;
                    e.Cell.Text = item.UyeAdi;
                    e.Cell.Text += "<a href='mailto:" + item.UyeMail + "'>Mail</a>";
                }
            }
        }
    }
}