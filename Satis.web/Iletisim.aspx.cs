using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Satis.web
{
    public partial class Iletisim : System.Web.UI.Page
    {
        Satis.Biz.GenelIslemler.MailIslemleri mailislem;
        protected void Page_Load(object sender, EventArgs e)
        {
            mailislem = new Biz.GenelIslemler.MailIslemleri();
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            try
            {
                mailislem.DestekMailGonder(txtIsim.Text, txtMail.Text, txtKonu.Text, txtMesaj.Text,txtTelefon.Text);
            }
            catch 
            {
                lblInfo.Text = "Bir Hata Oluştu. Lütfen Tekrar Deneyin...";
            }
            lblInfo.Text = "Mail başarıyla gönderildi...";
        }
    }
}