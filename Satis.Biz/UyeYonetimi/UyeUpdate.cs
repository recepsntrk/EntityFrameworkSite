using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.UyeYonetimi
{
    public class UyeUpdate
    {
        SatisEntities db;
        public UyeUpdate()
        {
            db = new SatisEntities();
        }
        public void Guncelle(tblUyeler guncelUye)
        {
            var guncellenecekUye = (from i in db.tblUyeler where i.UyeID == guncelUye.UyeID&&i.ISACTIVE==true&&i.ISDELETED==false select i ).Single();
            guncellenecekUye.UyeAdi = guncelUye.UyeAdi;
            guncellenecekUye.UyeCinsiyeti = guncelUye.UyeCinsiyeti;
            guncellenecekUye.UyeDogTarihi = guncelUye.UyeDogTarihi;
            guncellenecekUye.UyeMail = guncelUye.UyeMail;
            guncellenecekUye.UyeSifresi = guncelUye.UyeSifresi;
            guncellenecekUye.UyeTel = guncelUye.UyeTel;
            guncellenecekUye.ISACTIVE = guncelUye.ISACTIVE;
            guncellenecekUye.ISDELETED = guncelUye.ISDELETED;
            guncellenecekUye.ISMODDATE = DateTime.Now;
            guncellenecekUye.UyeTipID = guncelUye.UyeTipID;
            guncellenecekUye.AdresIl = guncelUye.AdresIl;
            guncellenecekUye.AdresIlce = guncelUye.AdresIlce;
            guncellenecekUye.UyeAdresi = guncelUye.UyeAdresi;
            db.SaveChanges();

        }
        public void Aktiflestir(int UyeID)
        {
            var guncellenecekUye = (from i in db.tblUyeler where i.UyeID == UyeID select i).Single();
            guncellenecekUye.ISACTIVE = true;
            db.SaveChanges();
        }
        public void sifreGuncelle(string mail, string sifre)
        {
            var yeniSifre = (from i in db.tblUyeler where i.UyeMail == mail && i.ISACTIVE == true && i.ISDELETED == false select i).Single();
            yeniSifre.UyeSifresi = sifre;
            db.SaveChanges();
        }
    }
}
