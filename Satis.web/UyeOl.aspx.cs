using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Data;
using Satis.Biz.UyeYonetimi;
using Satis.Biz.GenelIslemler;

namespace Satis.web
{
    public partial class UyeOl : System.Web.UI.Page
    {
        UyeQuery UyeSorgu = new UyeQuery();
        KriptolamaIslemleri Crypto = new KriptolamaIslemleri();
        protected void Page_Load(object sender, EventArgs e)
        {
            
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
                        int UyeID=0;
                        UyeInsert uyeKayit = new UyeInsert();
                        try
                        {
                           UyeID= uyeKayit.UyeKaydet(new tblUyeler
                                                    {
                                                        UyeAdi = txtAdi.Text,
                                                        UyeSifresi = Crypto.SifreKriptola(ClearSqlInjection(txtSifresi.Text)),
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
                            pnlGiris.Visible = false;
                        }
                        tblUyeler gelenUye = UyeSorgu.UyeDetayiGetir(UyeID);
                        Session.Add("LoggedUser", gelenUye);
                        System.Threading.Thread.Sleep(1000);
                        //Response.Redirect("~/Default.aspx?ID="+UyeID);
                        Response.Redirect("~/"+Request.QueryString["Route"]);
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
