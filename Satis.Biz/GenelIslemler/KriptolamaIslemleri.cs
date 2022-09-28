using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;

namespace Satis.Biz.GenelIslemler
{
    public class KriptolamaIslemleri
    {
        public KriptolamaIslemleri()
        {

        }
        public string SifreKriptola(string sifre)
        {
            SHA256 kripto = new SHA256Managed();
            byte[] gelendeger = kripto.ComputeHash(Encoding.ASCII.GetBytes(sifre));
            StringBuilder builder = new StringBuilder();
            foreach (byte item in gelendeger)
            {
                builder.Append(string.Format("{0:x2}", item));
            }
            return builder.ToString();
        }
    }
}
