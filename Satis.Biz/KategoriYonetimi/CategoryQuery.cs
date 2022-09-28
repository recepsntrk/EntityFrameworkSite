using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.KategoriYonetimi
{
   public  class CategoryQuery
    {
       SatisEntities db;
       public CategoryQuery()
       {
           db = new SatisEntities();
       }
       public List<tblCategory> KategorileriGetir()
       {
           return (from i in db.tblCategory where i.ISACTIVE == true && i.ISDELETED == false select i).ToList();
       }
       
       
    }
}
