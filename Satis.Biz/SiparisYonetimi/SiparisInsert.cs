using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.SiparisYonetimi
{
    public class SiparisInsert
    {
        SatisEntities db;
        public SiparisInsert()
        {
            db = new SatisEntities();
        }

        public int SiparisEkle(tblSiparisler Siparis)
        {
            db.AddTotblSiparisler(Siparis);
            db.SaveChanges();
            return Siparis.SiparisID;
        }
        public void SiparisDetayiEkle(tblSiparisDetaylari SiparisDetayi)
        {
            db.AddTotblSiparisDetaylari(SiparisDetayi);
            db.SaveChanges();
        }

    }
}
