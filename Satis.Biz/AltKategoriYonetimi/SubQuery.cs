using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.AltKategoriYonetimi
{
    public class SubQuery
    {
        SatisEntities db;
        public SubQuery()
        {
            db = new SatisEntities();
        }

        public List<tblSubCategory> AltKategorileriGetir(int KategoriID)
        {
            return (from i in db.tblSubCategory where i.ISACTIVE == true && i.ISDELETED == false && i.CategoryID == KategoriID select i).ToList();
        }
    }
}
