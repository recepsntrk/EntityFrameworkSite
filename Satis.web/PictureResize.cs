using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.IO;
namespace Satis.web
{
    public class PictureResize
    {
        private bool ThumbnailCallBack()
        {
            return false;
        }

        public void ResimBoyutlandirVeKaydet(
            string resim_adi,
            Image i,
            int en,
            int boy,
            string resim_oneki,
            string kesin_yol)
        {
            Image.GetThumbnailImageAbort myCallBack = new Image.GetThumbnailImageAbort(ThumbnailCallBack);
            Image resim = i.GetThumbnailImage(en, boy, myCallBack, IntPtr.Zero);
            Graphics g = Graphics.FromImage(resim);
            g.DrawImage(i, new Rectangle(0, 0, en, boy));
            resim.Save(kesin_yol + "\\" + resim_oneki + resim_adi);
        }
    }
}