using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;


namespace Satis.Biz.UrunYonetimi
{
    public class UrunSort
    {
        SatisEntities db;
        public UrunSort()
        {
            db = new SatisEntities();
        }

        public List<UrunGoster> KategoriyeGoreArtanFiyatUrunGoster(int KategoriID)
        {
            return (from i in db.tblSubCategory
                    join x in db.tblProduct
                    on i.SubCategoryID equals x.SubCategoryID
                    join z in db.tblPicture
                    on x.ProductID equals z.ProductID
                    where x.ISACTIVE == true && x.ISDELETED == false && i.CategoryID == KategoriID
                    orderby x.Price ascending
                    select new UrunGoster
                    {
                        UrunID = x.ProductID,
                        UrunAdi = x.ProductName,
                        KdvDahil = x.KdvDahil,
                        resim = z.Picture1,
                        KucukResim = z.thumbsPicture1

                    }).ToList();
        }
        public List<UrunGoster> KategoriyeGoreAzalanFiyatUrunGoster(int KategoriID)
        {
            return (from i in db.tblSubCategory
                    join x in db.tblProduct
                    on i.SubCategoryID equals x.SubCategoryID
                    join z in db.tblPicture
                    on x.ProductID equals z.ProductID
                    where x.ISACTIVE == true && x.ISDELETED == false && i.CategoryID == KategoriID
                    orderby x.Price descending
                    select new UrunGoster
                    {
                        UrunID = x.ProductID,
                        UrunAdi = x.ProductName,
                        KdvDahil = x.KdvDahil,
                        resim = z.Picture1,
                        KucukResim = z.thumbsPicture1

                    }).ToList();
        }
        public List<UrunGoster> KategoriyeGoreEnYeniUrunGoster(int KategoriID)
        {
            return (from i in db.tblSubCategory
                    join x in db.tblProduct
                    on i.SubCategoryID equals x.SubCategoryID
                    join z in db.tblPicture
                    on x.ProductID equals z.ProductID
                    where i.ISACTIVE == true && i.ISDELETED == false && i.CategoryID == KategoriID
                    orderby x.ISCREDATE descending
                    select new UrunGoster
                    {
                        UrunID = x.ProductID,
                        UrunAdi = x.ProductName,
                        KdvDahil = x.KdvDahil,
                        resim = z.Picture1,
                        KucukResim = z.thumbsPicture1

                    }).ToList();
        }
        public List<UrunGoster> KategoriyeGoreIndirimliiUrunGoster(int KategoriID)
        {
            return (from i in db.tblSubCategory
                    join x in db.tblProduct
                    on i.SubCategoryID equals x.SubCategoryID
                    join z in db.tblPicture
                    on x.ProductID equals z.ProductID
                    where x.ISACTIVE == true && x.ISDELETED == false && i.CategoryID == KategoriID && x.ISCampaign == true
                    orderby x.Price descending
                    select new UrunGoster
                    {
                        UrunID = x.ProductID,
                        UrunAdi = x.ProductName,
                        KdvDahil = x.KdvDahil,
                        resim = z.Picture1,
                        KucukResim = z.thumbsPicture1

                    }).ToList();
        }
        public List<UrunGoster> AltKategoriyeGoreArtanFiyatUrunGoster(int AltKategoriID)
        {
            return (from i in db.tblSubCategory
                    join x in db.tblProduct
                    on i.SubCategoryID equals x.SubCategoryID
                    join z in db.tblPicture
                    on x.ProductID equals z.ProductID
                    where x.ISACTIVE == true && x.ISDELETED == false && x.SubCategoryID == AltKategoriID
                    orderby x.Price ascending
                    select new UrunGoster
                    {
                        UrunID = x.ProductID,
                        UrunAdi = x.ProductName,
                        KdvDahil = x.KdvDahil,
                        resim = z.Picture1,
                        KucukResim = z.thumbsPicture1

                    }).ToList();
        }
        public List<UrunGoster> AltKategoriyeGoreAzalanFiyatUrunGoster(int AltKategoriID)
        {
            return (from i in db.tblSubCategory
                    join x in db.tblProduct
                    on i.SubCategoryID equals x.SubCategoryID
                    join z in db.tblPicture
                    on x.ProductID equals z.ProductID
                    where i.ISACTIVE == true && i.ISDELETED == false && x.SubCategoryID == AltKategoriID
                    orderby x.Price descending
                    select new UrunGoster
                    {
                        UrunID = x.ProductID,
                        UrunAdi = x.ProductName,
                        KdvDahil = x.KdvDahil,
                        resim = z.Picture1,
                        KucukResim = z.thumbsPicture1

                    }).ToList();
        }
        public List<UrunGoster> AltKategoriyeGoreEnYeniUrunGoster(int AltKategoriID)
        {
            return (from i in db.tblSubCategory
                    join x in db.tblProduct
                    on i.SubCategoryID equals x.SubCategoryID
                    join z in db.tblPicture
                    on x.ProductID equals z.ProductID
                    where i.ISACTIVE == true && i.ISDELETED == false && x.SubCategoryID == AltKategoriID
                    orderby x.ISCREDATE descending
                    select new UrunGoster
                    {
                        UrunID = x.ProductID,
                        UrunAdi = x.ProductName,
                        KdvDahil = x.KdvDahil,
                        resim = z.Picture1,
                        KucukResim = z.thumbsPicture1

                    }).ToList();
        }
        public List<UrunGoster> AltKategoriyeGoreIndirimliiUrunGoster(int AltKategoriID)
        {
            return (from i in db.tblSubCategory
                    join x in db.tblProduct
                    on i.SubCategoryID equals x.SubCategoryID
                    join z in db.tblPicture
                    on x.ProductID equals z.ProductID
                    where i.ISACTIVE == true && i.ISDELETED == false && x.SubCategoryID == AltKategoriID && x.ISCampaign == true
                    orderby x.Price ascending
                    select new UrunGoster
                    {
                        UrunID = x.ProductID,
                        UrunAdi = x.ProductName,
                        KdvDahil = x.KdvDahil,
                        resim = z.Picture1,
                        KucukResim = z.thumbsPicture1

                    }).ToList();
        }
        public List<UrunGoster> IndirimliiUrunGoster()
        {
            return (from i in db.tblProduct
                    join x in db.tblPicture
                    on i.ProductID equals x.ProductID
                    where i.ISACTIVE == true && i.ISDELETED == false  && i.ISCampaign == true
                    orderby i.Price ascending
                    select new UrunGoster
                    {
                        UrunID = i.ProductID,
                        UrunAdi = i.ProductName,
                        KdvDahil = i.KdvDahil,
                        resim = x.Picture1,
                        KucukResim = x.thumbsPicture1
                    }).ToList();
        }
        public List<UrunGoster> ArtanFiyatUrunGoster()
        {
            return (from i in db.tblProduct
                    join x in db.tblPicture
                    on i.ProductID equals x.ProductID
                    where i.ISACTIVE == true && i.ISDELETED == false 
                    orderby i.Price ascending
                    select new UrunGoster
                    {
                        UrunID = i.ProductID,
                        UrunAdi = i.ProductName,
                        KdvDahil = i.KdvDahil,
                        resim = x.Picture1,
                        KucukResim = x.thumbsPicture1
                    }).ToList();
        }
        public List<UrunGoster> AzalanFiyatUrunGoster()
        {
            return (from i in db.tblProduct
                    join x in db.tblPicture
                    on i.ProductID equals x.ProductID
                    where i.ISACTIVE == true && i.ISDELETED == false 
                    orderby i.Price descending
                    select new UrunGoster
                    {
                        UrunID = i.ProductID,
                        UrunAdi = i.ProductName,
                        KdvDahil = i.KdvDahil,
                        resim = x.Picture1,
                        KucukResim = x.thumbsPicture1

                    }).ToList();
        }
        public List<UrunGoster> EnYeniUrunGoster()
        {
            return (from i in db.tblProduct
                    join x in db.tblPicture
                    on i.ProductID equals x.ProductID
                    where i.ISACTIVE == true && i.ISDELETED == false 
                    orderby i.ISCREDATE descending
                    select new UrunGoster
                    {
                        UrunID = i.ProductID,
                        UrunAdi = i.ProductName,
                        KdvDahil = i.KdvDahil,
                        resim = x.Picture1,
                        KucukResim = x.thumbsPicture1

                    }).ToList();
        }
    }
}
