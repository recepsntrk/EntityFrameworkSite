<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Satis.web.Admin.Product.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 310px;
        }
        .style3
        {
            height: 40px;
        }
        .style4
        {
            width: 310px;
            height: 26px;
        }
        .style5
        {
            width: 310px;
            height: 27px;
        }
        .style6
        {
            width: 182px;
            height: 28px;
        }
        .style7
        {
            width: 310px;
            height: 40px;
        }
        .style8
        {
            width: 182px;
            height: 27px;
        }
        .style9
        {
            width: 182px;
            height: 40px;
        }
        .style10
        {
            width: 142px;
            height: 26px;
        }
        .style11
        {
            width: 142px;
        }
        .style12
        {
            height: 40px;
            width: 142px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="contain">
            <table width="100%" height="100%" style="background-color:#E9E9E9;border:1px solid #000"cellspacing="2" cellpadding="1">
  <tr>
    <td class="style10">&nbsp;</td>
    <td class="style2">
        <%--   <asp:DropDownList ID="ddlSubCategory" runat="server" AutoPostBack="True" 
            Height="20px" Width="150px">
        </asp:DropDownList>--%>
      </td>
    <td class="style8">&nbsp;</td>
    <td class="style4"></td>
  </tr>
  <tr>
    <td class="style10">Ürün Adı :</td>
    <td class="style2">
        <asp:TextBox ID="txtProductName" runat="server" Width="180px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtProductName" ErrorMessage="Zorunlu" 
            ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
    <td class="style8">&nbsp;</td>
    <td class="style4"></td>
  </tr>
  <tr>
    <td class="style10">Fiyatı :</td>
    <td class="style2">
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtPrice" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
    <td class="style8">KDV Dahil :</td>
    <td class="style4">
        <asp:TextBox ID="txtListPrice" runat="server" Width="120px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtListPrice" ErrorMessage="Zorunlu" 
            ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
  </tr>
  <tr>
    <td class="style10">Boyutu :</td>
    <td class="style2">
        <asp:TextBox ID="txtSize" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtSize" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
    <td class="style8">&nbsp;</td>
    <td class="style4">
        &nbsp;</td>
  </tr>
  <tr>
    <td class="style10">Stok :</td>
    <td class="style2">
        <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtStock" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
    <td class="style8">&nbsp;</td>
    <td class="style4"></td>
  </tr>
                <tr>
    <td class="style11">
        <asp:CheckBox ID="chkAktif" runat="server" Text="Aktif" />
      </td>
    <td class="style2">
        <asp:CheckBox ID="chkSil" runat="server" Text="Sil" />
      </td>
    <td class="style6">
        <asp:CheckBox ID="chkKampanyali" runat="server" Text="Kampanyalımı" />
                    </td>
    <td>
        <asp:TextBox ID="txtOldPrice" runat="server"></asp:TextBox>
      &nbsp;&nbsp; Eski Fiyat</td>
                </tr>
                <tr>
    <td class="style12">Detay :</td>
    <td class="style7">
        <asp:TextBox ID="txtDetails" runat="server" Height="100px" TextMode="MultiLine" 
            Width="220px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtDetails" ErrorMessage="Zorunlu" ValidationGroup="1"></asp:RequiredFieldValidator>
      </td>
    <td class="style9">
        Maliyeti</td>
    <td class="style3">
        <asp:TextBox ID="txtCost" runat="server" Width="181px" ></asp:TextBox>
        <br />
                    </td>
                </tr>
                <tr>
    <td class="style11">&nbsp;</td>
    <td class="style2">
        <asp:Button ID="btnProductUpdate" runat="server" 
            onclick="btnProductUpdate_Click" Text="Güncelle" BackColor="#666666" 
            ForeColor="White" Height="32px" Width="105px" ValidationGroup="1" />
      </td>
    <td class="style6">
        &nbsp;</td>
    <td>
        &nbsp;</td>
                </tr>
                <tr>
    <td class="style12"></td>
    <td class="style7">
        <asp:Label ID="lblHata" runat="server"></asp:Label>
      </td>
    <td class="style9">
                    </td>
    <td class="style3">
                    </td>
                </tr>
  <tr>
    <td class="style10">Resim 1:</td>
    <td class="style2">
        <asp:FileUpload ID="fluImage1" runat="server" Width="240px" />
        <br />
        <br />
        <asp:Image ID="imgresim" runat="server" Height="180px" Width="170px" />
      </td>
    <td class="style5" colspan="2">
        <asp:FileUpload ID="Fluthumbs1" runat="server" />
      &nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Image ID="imgkucukresim" runat="server" Height="180px" Width="170px" />
      </td>
  </tr>
  <tr>
    <td class="style10">Resim 2:</td>
    <td class="style2">
        <br />
        <br />
      </td>
    <td class="style5" colspan="2">
      &nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;
        </td>
  </tr>
  <tr>
    <td class="style10">&nbsp;</td>
    <td class="style2">
        <asp:Button ID="PictureUpdate" runat="server" Height="36px" 
            onclick="btnPictureUpdate_Click" Text="Resim Güncelle" Width="121px" 
            BackColor="#666666" ForeColor="White" />
      </td>
    <td class="style8">&nbsp;</td>
    <td class="style4">&nbsp;</td>
  </tr>
  <tr>
    <td class="style11">&nbsp;</td>
    <td class="style2">
        &nbsp;</td>
    <td class="style6">&nbsp;</td>
    <td>
        &nbsp;</td>
  </tr>
  </table>
            </div>
</asp:Content>
