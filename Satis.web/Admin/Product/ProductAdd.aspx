<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="ProductAdd.aspx.cs" Inherits="Satis.web.Admin.Product.ProductAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            height: 40px;
        }
        .style5
        {
            height: 40px;
            }
        .style6
        {
            width: 95px;
        }
        .style7
        {
            height: 125px;
        }
        .style8
        {
            width: 95px;
            height: 125px;
        }
        .style9
        {
            height: 40px;
            width: 95px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
            <div id="contain">
            <table width="100%" style="background-color:#E9E9E9" border="1" cellspacing="2" cellpadding="1">
  <tr>
    <td class="style4">Kategori :</td>
    <td class="style4">
        <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" 
            Height="20px" Width="150px" 
            onselectedindexchanged="ddlCategory_SelectedIndexChanged">
        </asp:DropDownList>
      </td>
    <td class="style9">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="ddlCategory" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
    <td class="style4"></td>
  </tr>
  <tr>
    <td class="style4">Alt Kategori :</td>
    <td class="style4">
        <asp:DropDownList ID="ddlSubCategory" runat="server" AutoPostBack="True" 
            Height="20px" Width="150px">
        </asp:DropDownList>
      </td>
    <td class="style9">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="ddlSubCategory" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
    <td class="style4"></td>
  </tr>
  <tr>
    <td class="style4">Ürün Adı :</td>
    <td class="style4">
        <asp:TextBox ID="txtProductName" runat="server" Width="180px" MaxLength="22"></asp:TextBox>
      </td>
    <td class="style9">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtProductName" ErrorMessage="Zorunlu" 
            ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
    <td class="style4"></td>
  </tr>
                <tr>
    <td class="style7">Detayı :</td>
    <td class="style7" valign=top>
        <asp:TextBox ID="txtDetails" runat="server" Height="80px" 
            Width="250px" ></asp:TextBox>
      </td>
    <td class="style8">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtDetails" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
    <td class="style7">
        <asp:Label ID="lblInfo" runat="server"></asp:Label>
        </td>
                </tr>
  <tr>
    <td class="style4">Fiyatı :</td>
    <td class="style4">
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
      </td>
    <td class="style9">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtPrice" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
    <td class="style4">
        &nbsp;</td>
  </tr>
  <tr>
    <td class="style4">Boyutu :</td>
    <td class="style4">
        <asp:TextBox ID="txtSize" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtSize" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
    <td class="style9">Birim :</td>
    <td class="style4">
        <asp:TextBox ID="txtSizeUnit" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtSizeUnit" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td class="style4">Stok :</td>
    <td class="style4">
        <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
      </td>
    <td class="style9">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtStock" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
    <td class="style4"></td>
  </tr>
  <tr>
    <td class="style4">Resim 1:</td>
    <td class="style4">
        <asp:FileUpload ID="fluImage1" runat="server" Width="240px" 
            ViewStateMode="Enabled" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="fluImage1" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
    <td class="style9">
        &nbsp;Küçük Resim 1 :</td>
    <td class="style5">
        <asp:FileUpload ID="Fluthumbs1" runat="server" ViewStateMode="Enabled" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="Fluthumbs1" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
  </tr>
                <tr>
    <td class="style4">1</td>
    <td class="style4">
        <asp:Button ID="btnProductAdd" runat="server" Height="30px" 
            onclick="btnProductAdd_Click" Text="Ürünü Ekle" Width="81px" 
            ValidationGroup="1" />
      </td>
    <td class="style9">&nbsp;</td>
    <td class="style4">&nbsp;</td>
                </tr>
  <tr>
    <td>Maliyeti :</td>
    <td>
        <asp:TextBox ID="txtCost" runat="server" Width="181px"></asp:TextBox>
      </td>
    <td class="style6">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>
        &nbsp;</td>
    <td>
        &nbsp;</td>
    <td class="style6">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  </table>
            </div>
            </asp:Content>


