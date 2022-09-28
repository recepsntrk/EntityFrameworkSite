using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Satis.Data;
using Satis.Biz.UrunYonetimi;
namespace Satis.web.Admin.Product
{
    public partial class ProductAdd : System.Web.UI.Page
    {
        Satis.Biz.UrunYonetimi.UrunQuery UrunSorgu;
        Satis.Biz.UrunYonetimi.UrunInsert UrunEkle;
        Satis.Biz.KategoriYonetimi.CategoryQuery KategoriSorgu;
        Satis.Biz.AltKategoriYonetimi.SubQuery AltKategoriSorgu;
        tblUyeler gelenUye;
        protected void Page_Load(object sender, EventArgs e)
        {
            gelenUye = (tblUyeler)Session["LoggedUser"];
            KategoriSorgu = new Biz.KategoriYonetimi.CategoryQuery();
            AltKategoriSorgu = new Biz.AltKategoriYonetimi.SubQuery();
            UrunSorgu = new Biz.UrunYonetimi.UrunQuery();
            UrunEkle = new UrunInsert();
            if (!IsPostBack)
            {
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataValueField = "CategoryID";
                ddlCategory.DataSource = KategoriSorgu.KategorileriGetir();
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("Seçiniz", "0"));
            }
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlSubCategory.DataTextField = "SubCategoryName";
            ddlSubCategory.DataValueField = "SubCategoryID";
            ddlSubCategory.DataSource = AltKategoriSorgu.AltKategorileriGetir(int.Parse(ddlCategory.SelectedValue));
            ddlSubCategory.DataBind();
            ddlSubCategory.Items.Insert(0, new ListItem("Seçiniz", "0"));
            txtProductName.Text = ddlCategory.SelectedItem.Text;
        }

        protected void btnProductAdd_Click(object sender, EventArgs e)
        {
            int EklenenUrunID = 0;
            EklenenUrunID = UrunEkle.UrunEkle(new tblProduct
        {
            ProductName = txtProductName.Text,
            SubCategoryID = int.Parse(ddlSubCategory.SelectedValue),
            Price = Convert.ToDecimal(txtPrice.Text),
            Size = txtSize.Text + " " + txtSizeUnit.Text,
            Stock = int.Parse(txtStock.Text),
            Detail = txtDetails.Text,
            ISCampaign = false,
            ISACTIVE = true,
            ISDELETED = false,
            ISCREUSERID = gelenUye.UyeID,
            ISMODUSERID = gelenUye.UyeID,
            ISMODDATE = DateTime.Now,
            ISCREDATE = DateTime.Now,
            KdvDahil = (Convert.ToDecimal(txtPrice.Text) * 1.18m)
        });
            if (EklenenUrunID >= 1)
            {
                string resimKlasoru = Server.MapPath("~/Images/Products");
                if (fluImage1.HasFile)
                {
                    fluImage1.SaveAs(resimKlasoru + "/" + fluImage1.FileName);
                    if (Fluthumbs1.HasFile)
                    {
                        Fluthumbs1.SaveAs(resimKlasoru + "/Thumbs/" + Fluthumbs1.FileName);
                    }
                    else
                    {
                        fluImage1.SaveAs(resimKlasoru + "/Thumbs/" + fluImage1.FileName);
                    }
                }
                try
                {
                    UrunEkle.ResimEkle(new tblPicture
                    {
                        ProductID = EklenenUrunID,
                        Picture1 = "Images/Products/" + fluImage1.FileName,
                        thumbsPicture1 = "Images/Products/Thumbs/" + Fluthumbs1.FileName,
                        ISACTIVE = true,
                        ISDELETED = false,
                        ISCREDATE = DateTime.Now,
                        ISMODDATE = DateTime.Now,
                        ISCREUSERID = gelenUye.UyeID,
                        ISMODUSERID = gelenUye.UyeID
                    });
                }
                catch
                {
                    lblInfo.Text = "RESİM EKLEMEDE HATA OLUŞTU!!";
                }
            }
            else if (EklenenUrunID == 0)
            {
                lblInfo.Text = "ÜRÜN EKLEMEDE HATA OLUŞTU!!";
            }
            Response.Redirect("~/Admin/Product/ProductList.aspx");
        }
    }
}