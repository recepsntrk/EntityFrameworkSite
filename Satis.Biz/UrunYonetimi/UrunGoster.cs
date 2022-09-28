using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Satis.Biz.UrunYonetimi
{
   public class UrunGoster
    {
        public int UrunID { get; set; }
        public string UrunAdi { get; set; }
        public string resim { get; set; }
        public string KucukResim { get; set; }
        public decimal Fiyati { get; set; }
        public decimal? KdvDahil { get; set; }
    }
}
