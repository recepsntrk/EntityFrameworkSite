using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;
using Satis.Biz.UrunYonetimi;

namespace Satis.Biz.SatisSecenekleri
{
   public class SepetQuery
    {
       SatisEntities db;
       public SepetQuery()
       {
           db = new SatisEntities();
       }

       public List<Sepet> UyeSepetGetir(int UyeID)
       {
           return (from i in db.tblSepet 
                   join x in db.tblProduct on i.ProductID equals x.ProductID
                   join z in db.tblPicture on i.ProductID equals z.ProductID
                   where i.UyeID == UyeID && i.ISDELETED == false && x.ISDELETED==false select new Sepet { 
           Adet=i.Adet,
           Fiyat=i.Tutar,
           UrunAdi=x.ProductName,
           Resim=z.thumbsPicture1,
           UrunID=x.ProductID,
           AlimDetayi=i.AlimDetayi
           }).ToList();
       }
       public void SepetUpdate(int UyeID, int UrunID,int Adet)
       { 
       var sonuc=(from i in db.tblSepet where i.UyeID==UyeID && i.ProductID==UrunID && i.ISACTIVE==true && i.ISDELETED==false select i).Single();
       sonuc.Adet = Adet;
       db.SaveChanges();
       }

       public void SepetUrunSil(int UyeID, int UrunID)
       {
           var sonuc = (from i in db.tblSepet where i.UyeID == UyeID && i.ProductID == UrunID && i.ISDELETED==false select i).Single();
           sonuc.ISDELETED = true;
           db.SaveChanges();
       }
       public int AdetGetir(int UrunID, int UyeID)
       {
           return (from i in db.tblSepet where i.ProductID == UrunID && i.UyeID == UyeID && i.ISDELETED==false && i.ISACTIVE==true select i.Adet).Single() ;
       }
    }
}
