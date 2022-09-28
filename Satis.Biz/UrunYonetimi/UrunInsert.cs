using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.UrunYonetimi
{
   public class UrunInsert
    {
       SatisEntities db;
       public UrunInsert()
       {
           db = new SatisEntities();
       }

       public int UrunEkle(tblProduct Urunler)
       {
           db.AddTotblProduct(Urunler);
           db.SaveChanges();
           return Urunler.ProductID;
       }
       public void ResimEkle(tblPicture Resimler)
       {
           db.AddTotblPicture(Resimler);
           db.SaveChanges();
       }
       
    }
}