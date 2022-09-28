using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Satis.Biz.UrunYonetimi
{
    public class Sepet
    {
        public int UrunID { get; set; }
        public string UrunAdi { get; set; }
        public string Resim { get; set; }
        public int Adet { get; set; }
        public decimal? Fiyat { get; set; }
        public decimal ToplamFiyat { get; set; }
        public string AlimDetayi { get; set; }
    }
}
