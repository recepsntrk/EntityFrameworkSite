using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Satis.Biz.UrunYonetimi
{
    public class NikahSekeriOzellikleri
    {
        public int UrunID { get; set; }
        public string UrunAdi { get; set; }
        public string GelinAdi { get; set; }
        public string damatAdi { get; set; }
        public DateTime Nikahtarihi { get; set; }
        public int SekerTipi { get; set; }
        public bool ISMiknatis { get; set; }
        public string Not { get; set; }
        
    }
}
