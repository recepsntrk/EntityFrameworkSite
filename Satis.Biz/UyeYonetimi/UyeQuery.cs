using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Satis.Data;

namespace Satis.Biz.UyeYonetimi
{
    public class UyeQuery
    {
        SatisEntities db;
        public UyeQuery()
        {
            db = new SatisEntities();
        }
        public List<tblUyeler> UyeleriGetir()
        {
            return (from i in db.tblUyeler where i.ISACTIVE == true && i.ISDELETED == false select i).ToList();
        }
        public List<tblUyeler> TumUyeleriGetir()
        {
            return (from i in db.tblUyeler select i).ToList();

        }
        public int UyeKontrol(string mail, string sifre)
        {
            int sonuc = 0;
            try
            {
                sonuc = (from i in db.tblUyeler
                         where i.ISACTIVE == true && i.ISDELETED == false && i.UyeMail == mail && i.UyeSifresi == sifre
                         select i.UyeID).Single();
            }
            catch
            {
                sonuc = 0;
            }
            return sonuc;
        }
        public tblUyeler UyeDetayiGetir(int UyeID)
        {

            return (from i in db.tblUyeler where i.UyeID == UyeID select i).Single();

        }
        public string UyeAdiDondur(string Mail)
        {
            return (from i in db.tblUyeler where i.UyeMail == Mail select i.UyeAdi).Single();
        }
        public int mailKontrol(string mail)
        {
            int sonuc = 0;
            try
            {
                sonuc = (from i in db.tblUyeler
                         where i.ISACTIVE == true &&
                             i.ISDELETED == false && i.UyeMail == mail
                         select i.UyeID).Single();
            }
            catch
            {
                sonuc = 0;
            }
            return sonuc;
        }
    }
}
