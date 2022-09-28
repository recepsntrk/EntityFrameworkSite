using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.SiparisYonetimi
{
   public class UyeSiparis
    {
        public int SiparisID { get; set; }
        public DateTime SiparisTarihi { get; set; }
        public decimal SiparisTutari { get; set; }
        public string SiparisDurumu { get; set; }
    }
}
