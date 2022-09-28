<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true"
    CodeBehind="ProductList.aspx.cs" Inherits="Satis.web.Admin.Product.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div id="contain">
        <asp:GridView ID="grdProductList" runat="server" BackColor="#CCCCCC" BorderColor="#999999"
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black"
            AutoGenerateColumns="False">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="UrunID" DataNavigateUrlFormatString="Update.aspx?ID={0}"
                    HeaderText="Güncelle" Text=">>>" />
                <asp:BoundField HeaderText="AltKatID" DataField="AltKategoriID" />
                <asp:BoundField HeaderText="ID" DataField="UrunID" />
                <asp:BoundField HeaderText="Adı" DataField="UrunAdi" />
                <asp:BoundField HeaderText="Stok" DataField="Stogu" />
                <asp:BoundField HeaderText="Fiyat" DataField="Fiyati" />
                <asp:BoundField HeaderText="Kdv" DataField="KdvDahil" />
                <asp:BoundField HeaderText="Eski" DataField="EskiFiyati" />
                <asp:BoundField HeaderText="Boyut" DataField="Boyutu" />
                <asp:CheckBoxField HeaderText="Kamp" DataField="Kampanyalimi" />
                <asp:CheckBoxField HeaderText="Aktf" DataField="Aktif" />
                <asp:CheckBoxField HeaderText="Sil" DataField="Silinmis" />
                <asp:TemplateField HeaderText="Resim1">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Width="60" Height="60" ImageUrl='<%# Eval("Resim") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Kresim1">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Width="60" Height="60" ImageUrl='<%# Eval("KucukResim") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Aciklama" DataField="Detayi" />
                <asp:BoundField HeaderText="Credate" DataField="EklenmeTarihi" />
                <asp:BoundField HeaderText="Moddate" DataField="ModTarihi" />
                <asp:BoundField HeaderText="Ekleyen" DataField="Ekleyen" />
                <asp:BoundField HeaderText="Duzenleyen" DataField="Duzenleyen" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
</asp:Content>
