using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.AdminIslemleri
{
    public class Query
    {
        SatisEntities db;
        public Query()
        {
            db = new SatisEntities();
        }
        public List<TumUrunler> ListelemeIcinUrunlerigetir()
        {
            return (from i in db.tblProduct
                    join z in db.tblPicture
                    on i.ProductID equals z.ProductID
                    select new TumUrunler
                    {
                        AltKategoriID = i.SubCategoryID,
                        UrunID = i.ProductID,
                        UrunAdi = i.ProductName,
                        Fiyati = i.Price,
                        EskiFiyati = i.OldPrice,
                        Stogu = i.Stock,
                        Boyutu = i.Size,
                        Aktif = i.ISACTIVE,
                        Kampanyalimi = i.ISCampaign,
                        Silinmis = i.ISDELETED,
                        EklenmeTarihi = i.ISCREDATE,
                        ModTarihi = i.ISMODDATE,
                        Ekleyen = i.ISCREUSERID,
                        Duzenleyen = i.ISMODUSERID,
                        Detayi = i.Detail,
                        Resim = "~/" + z.Picture1,
                        KucukResim = "~/" + z.thumbsPicture1,
                        KdvDahil=i.KdvDahil
                    }).ToList();

        }
        public List<TumUrunler> UpdateIcinUrunleriGetir(int UrunID)
        {
            return (from i in db.tblProduct
                    join z in db.tblPicture
                    on i.ProductID equals z.ProductID where i.ProductID==UrunID
                    select new TumUrunler
                    {
                        AltKategoriID = i.SubCategoryID,
                        UrunID = i.ProductID,
                        UrunAdi = i.ProductName,
                        Fiyati = i.Price,
                        EskiFiyati = i.OldPrice,
                        Stogu = i.Stock,
                        Boyutu = i.Size,
                        Aktif = i.ISACTIVE,
                        Kampanyalimi = i.ISCampaign,
                        Silinmis = i.ISDELETED,
                        EklenmeTarihi = i.ISCREDATE,
                        ModTarihi = i.ISMODDATE,
                        Ekleyen = i.ISCREUSERID,
                        Duzenleyen = i.ISMODUSERID,
                        KdvDahil=i.KdvDahil,
                        Detayi = i.Detail,
                        Resim = "~/" + z.Picture1,
                        KucukResim = "~/" + z.thumbsPicture1,
                    }).ToList();
        }
    }
}
