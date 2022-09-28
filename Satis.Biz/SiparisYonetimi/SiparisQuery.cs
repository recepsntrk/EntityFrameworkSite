using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.SiparisYonetimi
{
    public class SiparisQuery
    {
        SatisEntities db;
        public SiparisQuery()
        {
            db = new SatisEntities();
        }

        public List<tblSiparisler> UyeSiparisDondur(int UyeID)
        {
            return (from i in db.tblSiparisler where i.UyeID == UyeID && i.ISACTIVE == true && i.ISDELETED == false select i).ToList();
        }
        public List<tblSiparisDetaylari> SiparisdetayiDondur(int SiparisID)
        {
            return (from i in db.tblSiparisDetaylari where i.SiparisID == SiparisID && i.ISACTIVE == true && i.ISDELETED == false select i).ToList();
        }
        public List<Siparis> SiparisiGetir(int SiparisID)
        {
            return (from i in db.tblSiparisler join x in db.tblSiparisDetaylari on i.SiparisID equals x.SiparisID join z in db.tblPicture on x.ProductID equals z.ProductID
                    where i.ISACTIVE == true && i.ISDELETED == false && i.SiparisID == SiparisID select new Siparis {
            UrunID=x.ProductID,
            Adet=x.Adet,
            AlimDetayi=x.AlimDetayi,
            Fiyat=i.SiparisToplamTutar,
            Resim=z.thumbsPicture1
            }).ToList();
        }
        public decimal SiparisTutarDondur(int SiparisID)
        {
            return (from i in db.tblSiparisler where i.SiparisID == SiparisID && i.ISACTIVE == true && i.ISDELETED == false select i.SiparisToplamTutar).Single();
        }
        public List<UyeSiparis> UyeSiparisiGetir(int UyeID)
        {
            return (from i in db.tblSiparisler join x in db.tblSiparisDurumlari on i.DurumID equals x.DurumID where i.UyeID == UyeID && i.ISACTIVE == true && i.ISDELETED == false select new UyeSiparis { 
            SiparisID=i.SiparisID,
            SiparisTarihi=i.ISCREDATE,
            SiparisTutari=i.SiparisToplamTutar,
            SiparisDurumu=x.DurumAdi
            }).ToList();
        }
    }
}
