using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Satis.Biz.AdminIslemleri
{
    public class TumUrunler
    {
        public int AltKategoriID { get; set; }
        public int UrunID { get; set; }
        public string UrunAdi { get; set; }
        public int? Stogu { get; set; }
        public string Boyutu { get; set; }
        public decimal Fiyati { get; set; }
        public decimal? EskiFiyati { get; set; }
        public decimal? KdvDahil { get; set; }
        public bool? Kampanyalimi { get; set; }
        public bool? Aktif { get; set; }
        public bool? Silinmis { get; set; }
        public DateTime? EklenmeTarihi { get; set; }
        public DateTime? ModTarihi { get; set; }
        public int? Ekleyen { get; set; }
        public int? Duzenleyen { get; set; }
        public string Detayi { get; set; }
        public string Resim { get; set; }
        public string KucukResim { get; set; }
    }
}
