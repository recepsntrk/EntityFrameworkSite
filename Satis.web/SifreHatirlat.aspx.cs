using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Biz.GenelIslemler;

namespace Satis.web
{
    public partial class SifreHatirlat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            Satis.Biz.UyeYonetimi.UyeQuery mailsorgula = new Satis.Biz.UyeYonetimi.UyeQuery();
            int UyeID = mailsorgula.mailKontrol(txtMail.Text);
            if (UyeID > 0)
            {
                string mail = txtMail.Text;
                string[] karakterler = new string[] { "a", "b", "c", "d", "e", "f", "s", "l", "o", "p", "5", ")", "4", "r", "9", "x", "z", "n", "w", "&", "?", "q", "1" };
                string cod = "";
                Random rnd = new Random();
                for (int i = 0; i < 6; i++)
                {
                    int index = rnd.Next(0, 24);
                    cod += karakterler[index];
                }
                KriptolamaIslemleri crypto = new KriptolamaIslemleri();
                string sifre = crypto.SifreKriptola(cod);
                Satis.Biz.UyeYonetimi.UyeUpdate SifreGuncelle = new Satis.Biz.UyeYonetimi.UyeUpdate();
                Satis.Biz.GenelIslemler.MailIslemleri SifreGonder = new Satis.Biz.GenelIslemler.MailIslemleri();
                Satis.Biz.UyeYonetimi.UyeQuery KullaniciAdi = new Satis.Biz.UyeYonetimi.UyeQuery();
                string UyeAdi = KullaniciAdi.UyeAdiDondur(mail);
                SifreGuncelle.sifreGuncelle(mail, sifre);
                SifreGonder.HatirlatmaMailiGonder(mail, UyeAdi, cod);
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblInfo.Visible = true;
            }
        }
    }
}