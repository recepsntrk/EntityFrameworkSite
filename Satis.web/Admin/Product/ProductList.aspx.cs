using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Satis.web.Admin.Product
{
    public partial class ProductList : System.Web.UI.Page
    {
        Satis.Biz.AdminIslemleri.Query UrunSorgu;
        protected void Page_Load(object sender, EventArgs e)
        {
            UrunSorgu = new Biz.AdminIslemleri.Query();

            grdProductList.DataSource = UrunSorgu.ListelemeIcinUrunlerigetir();
            grdProductList.DataBind();
        }
    }
}