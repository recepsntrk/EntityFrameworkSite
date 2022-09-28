using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.UrunYonetimi
{
    public class UrunQuery
    {
        SatisEntities db;
        public UrunQuery()
        {
            db = new SatisEntities();
        }
        public List<tblProduct> UrunleriGetir()
        {
            return (from i in db.tblProduct where i.ISACTIVE == true && i.ISDELETED == false select i).ToList();
        }

        public List<UrunGoster> UrunGosterme()
        {
            return (from i in db.tblPicture
                    join x in db.tblProduct on i.ProductID equals x.ProductID
                    where i.ProductID == x.ProductID && x.ISACTIVE==true && x.ISDELETED==false
                    select new UrunGoster
                    {
                        UrunID = x.ProductID,
                        UrunAdi = x.ProductName,
                        Fiyati = x.Price,
                        resim = i.Picture1,
                        KdvDahil=x.KdvDahil,
                        KucukResim = i.thumbsPicture1
                    }).ToList();
        }
        public List<UrunDetails> UrunDetaylari(int UrunID)
        {
            return (from i in db.tblPicture
                    join x in db.tblProduct on i.ProductID equals x.ProductID
                    join z in db.tblSubCategory on x.SubCategoryID equals z.SubCategoryID
                    where i.ProductID == UrunID && x.ISACTIVE == true && x.ISDELETED == false
                    select new UrunDetails
                    {
                        UrunID = UrunID,
                        UrunAdi=x.ProductName,
                        Fiyati = x.Price,
                        KdvDahil=x.KdvDahil,
                        stogu = x.Stock,
                        Boyutu = x.Size,
                        Resim1 = i.Picture1,
                        KucukResim = i.thumbsPicture1,
                        KategoriID = z.CategoryID,
                        Detayi = x.Detail
                    }).ToList();

        }
        public List<UrunGoster> KategoriyeGoreUrunGoster(int KategoriID)
        {
            return (from i in db.tblSubCategory
                    join x in db.tblProduct
                    on i.SubCategoryID equals x.SubCategoryID
                    join z in db.tblPicture
                    on x.ProductID equals z.ProductID
                    where x.ISACTIVE == true && x.ISDELETED == false && i.CategoryID == KategoriID
                    select new UrunGoster
                    {
                        UrunID = x.ProductID,
                        UrunAdi = x.ProductName,
                        Fiyati = x.Price,
                        resim = z.Picture1,
                        KucukResim = z.thumbsPicture1,
                        KdvDahil=x.KdvDahil
                    }).ToList();
        }
        public List<UrunGoster> AltKategoriyeGoreUrunGoster(int AltKategoriID)
        {
            return (from i in db.tblSubCategory
                    join x in db.tblProduct
                    on i.SubCategoryID equals x.SubCategoryID
                    join z in db.tblPicture
                    on x.ProductID equals z.ProductID
                    where x.ISACTIVE == true && x.ISDELETED == false && x.SubCategoryID == AltKategoriID
                    select new UrunGoster
                    {
                        UrunID = x.ProductID,
                        UrunAdi = x.ProductName,
                        Fiyati = x.Price,
                        resim = z.Picture1,
                        KucukResim = z.thumbsPicture1,
                        KdvDahil=x.KdvDahil
                    }).ToList();
        }

        public List<KampanyaliUrun> KampanyaliUrunGetir()
        {
            return (from i in db.tblPicture
                    join x in db.tblProduct on i.ProductID equals x.ProductID
                    where x.ISCampaign == true && x.ISACTIVE == true && x.ISDELETED == false
                    select new KampanyaliUrun
                    {
                        resim = i.Picture1,
                        KucukResim = i.thumbsPicture1,
                        UrunID = i.ProductID,
                        Fiyati = x.Price,
                        EskiFiyati = x.OldPrice,
                        KdvDahil = x.KdvDahil
                    }).ToList();
        }
        public List<Sepet> SepetDetayiGetir(int UrunID,int Adet)
        {
            return (from i in db.tblProduct
                    join x in db.tblPicture on i.ProductID equals x.ProductID
                    where i.ProductID == UrunID && i.ISACTIVE == true && i.ISDELETED == false
                    select new Sepet {
                    UrunID=UrunID,
                    UrunAdi=i.ProductName,
                    Resim=x.thumbsPicture1,
                    Fiyat=(decimal)i.KdvDahil,
                    Adet=Adet,
                    ToplamFiyat=(decimal)i.KdvDahil
                    }).ToList();
        }
        public int AdaGoreIDDondur(string UrunAdi)
        { 
        return (from i in db.tblProduct where i.ProductName==UrunAdi&&i.ISACTIVE==true select i.ProductID).Single();
        }
        
    }


}
