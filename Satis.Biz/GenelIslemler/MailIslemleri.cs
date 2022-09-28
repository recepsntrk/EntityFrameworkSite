using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Net;

namespace Satis.Biz.GenelIslemler
{
    public class MailIslemleri
    {
        public MailIslemleri()
        {

        }
        public void HatirlatmaMailiGonder(string Kime, string UyeAdi, string yeniSifre)
        {
            MailMessage mail = new MailMessage("kariyermcpd@gmail.com", Kime);
            mail.Subject = "Yeni Şifre Maili";
            //mail.Body = "<h3>Merhaba " + KullaniciAdi + "</h3><br> Uyeliginizi Aktiflestirmek icin Lutfen <a href='www.xyz.com/dogrula.aspx?cod=" + AktivasyonKey + "&UyeID=" + UyeID + "'>Tiklayiniz.</a>";
            mail.Body = "<h3>Merhaba" + UyeAdi + "</h3><br> Yeni Şifreniz " + yeniSifre;
            mail.IsBodyHtml = true;
            mail.CC.Add("rcpsntrk@hotmail.com");
            SmtpClient client = new SmtpClient();
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;

            client.Credentials = new NetworkCredential("kariyermcpd@gmail.com", "159123!!");
            client.Send(mail);
        }
        public void DestekMailGonder(string isim, string maili, string Konu, string mesaj,string Tel)
        {
            MailMessage mail = new MailMessage("adinsekerim@gmail.com", "info@adinsekerim.com");
            mail.Subject = Konu;
            mail.Body = "<h2>Ad-Soyad : "+isim+"</h2><h2>Maili : "+maili+"</h2><h2>Telefonu : "+Tel+"</h2><br> Mesaj : "+mesaj;
            mail.IsBodyHtml = true;
            mail.CC.Add("rcpsntrk@hotmail.com");
            SmtpClient client = new SmtpClient();
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("adinsekerim@gmail.com", "8520adin");
            client.Send(mail);
        }
        public void YasGunuMailGonder(string isim, string maili)
        {
            MailMessage mail = new MailMessage("info@adinsekerim.com",maili);
            mail.Subject = "Mutlu Yıllar";
            mail.Body = "Adinsekerim.com ailesi olarak Doğum gününüzü kutlarız.";
            mail.IsBodyHtml = true;
            mail.CC.Add("rcpsntrk@hotmail.com");
            SmtpClient client = new SmtpClient();
            client.Port = 587;
            client.Host = "mail.adinsekerim.com";
            client.EnableSsl = false;
            client.Credentials = new NetworkCredential("info@adinsekerim.com", "8520Burcu");
            client.Send(mail);
        }
    }
}
