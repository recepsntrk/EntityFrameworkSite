using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.SatisSecenekleri
{
   public class SepetInsert
    {
       SatisEntities db;
       public SepetInsert()
       {
           db = new SatisEntities();
       }

       public void UyeSepetEkle(tblSepet Sepet)
       {
           db.AddTotblSepet(Sepet);
           db.SaveChanges();
           
       }
    }
}
