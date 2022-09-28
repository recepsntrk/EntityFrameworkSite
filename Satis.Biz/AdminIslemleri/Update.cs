using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.AdminIslemleri
{
    public class Update
    {
        SatisEntities db;
        
        public Update()
        {
            db = new SatisEntities();
        }
        public void UrunGuncelle(int UrunID,string UrunAdi, decimal UrunFiyati, decimal? EskiFiyat, int UrunStogu, string UrunBoyutu, bool Aktif, bool Sil, bool Kampanya,int ModUye,string aciklama)
        {
            var sonuc = (from i in db.tblProduct where i.ProductID == UrunID select i).Single();
            sonuc.Price = UrunFiyati;
            sonuc.Stock = UrunStogu;
            sonuc.Size = UrunBoyutu;
            sonuc.ISCampaign = Kampanya;
            sonuc.ISACTIVE = Aktif;
            sonuc.ISMODUSERID = ModUye;
            sonuc.ISDELETED = Sil;
            sonuc.ISMODDATE = DateTime.Now;
            sonuc.OldPrice = EskiFiyat;
            sonuc.ProductName=UrunAdi;
            sonuc.Detail = aciklama;
            sonuc.KdvDahil = UrunFiyati * 1.18m;
            db.SaveChanges();
        }
        public void ResimGuncelle(int UrunID,string resim,string Kucukresim,int ModID)
        {
            var sonuc = (from i in db.tblProduct join x in db.tblPicture on i.ProductID equals x.ProductID where i.ProductID == UrunID select x).Single();
            sonuc.Picture1 = resim;
            sonuc.thumbsPicture1 = Kucukresim;
            sonuc.ISMODUSERID = ModID;
            db.SaveChanges();
        }
    }
}
