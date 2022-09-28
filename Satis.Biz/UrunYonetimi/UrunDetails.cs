using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Satis.Biz.UrunYonetimi
{
    public class UrunDetails
    {
        public int UrunID { get; set; }
        public string UrunAdi { get; set; }
        public decimal Fiyati { get; set; }
        public decimal? KdvDahil { get; set; }
        public int stogu { get; set; }
        public string Boyutu { get; set; }
        public string Resim1 { get; set; }
        public int YorumSayisi { get; set; }
        public string Yorum { get; set; }
        public string KucukResim { get; set; }
        public string Detayi { get; set; }
        public int KategoriID { get; set; }
    }
}
