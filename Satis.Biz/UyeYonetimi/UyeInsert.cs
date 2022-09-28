using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.UyeYonetimi
{
    public class UyeInsert
    {
        SatisEntities db;
        public UyeInsert()
        {
            db = new SatisEntities();
        }
        public int UyeKaydet(tblUyeler Uyeler)
        {
            db.AddTotblUyeler(Uyeler);
            db.SaveChanges();
            return Uyeler.UyeID;
        }
    }
}
