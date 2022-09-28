using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.AdminIslemleri
{
    public  class SiparisQuery
    {
        SatisEntities db;
        public SiparisQuery()
        {
            db = new SatisEntities();
        }
    }
}
