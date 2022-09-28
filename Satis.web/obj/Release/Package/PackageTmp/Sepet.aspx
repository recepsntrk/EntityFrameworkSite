<%@ Page Title="Sepetim | Adin Şekerim" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" ViewStateMode="Enabled"
    CodeBehind="Sepet.aspx.cs" Inherits="Satis.web.Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            width: 124px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="regionSepet" style=" margin: 40px auto;color: #fff; text-align: center; height: auto;margin-left:30px;border-radius: 10px; -moz-border-radius: 10px;-webkit-border-radius: 10px;overflow:hidden">
        <asp:GridView ID="GrdSepet" runat="server" AutoGenerateColumns="False" CellPadding="4"
            Width="780px" BackColor="#b80000" BorderColor="White" BorderWidth="1px" GridLines="Horizontal"
             ViewStateMode="Enabled">
            <Columns>
                <asp:TemplateField HeaderText="Sil">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkDelete" runat="server" BorderStyle="Outset" BorderWidth="15px"
                            BorderColor="Black" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Ürün Kodu" DataField="UrunID" />
                <asp:BoundField HeaderText="Ürün Adı" DataField="UrunAdi" />
                <asp:TemplateField HeaderText="Resmi">
                    <ItemTemplate>
                        <asp:Image ID="imgUrun" runat="server" Width="80" Height="90" ImageUrl='<%# Eval("Resim") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Ürün Fiyatı" DataField="Fiyat" />
                <asp:TemplateField HeaderText="Adet">
                    <ItemTemplate>
                        <asp:TextBox ID="txtAdet" runat="server" Height="22px" Width="40px" BackColor="#000"
                            ForeColor="White" ToolTip="Adet Giriniz"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Toplam Fiyat" DataField="ToplamFiyat" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle Height="100px" />
        </asp:GridView>
        <table style="width: 100%; margin-top: 20px;height:120px">
            <tr>
                <td width="140px" style="background-color:#bd0707">
                    <asp:CheckBox ID="chkTumu" runat="server" AutoPostBack="True" oncheckedchanged="chkTumu_CheckedChanged" 
                        Text="Tümünü Seç" ForeColor="White"/>
                </td>
                <td style="width: 200px" rowspan="2">
                </td>
                <td style="width: 100px" rowspan="2">
                </td>
                <td style="width: 45px" rowspan="2">
                    &nbsp;
                </td>
                <td style="width: auto" rowspan="2">
                    Toplam Tutar :
                    <asp:Label ID="lblToplamTutar" runat="server"></asp:Label>
                    &nbsp;TL<br />
                    <br />
                    Kdv Dahil : 
                    <asp:Label ID="lblKdvDahil" runat="server"></asp:Label>
&nbsp;TL</td>
            </tr>
            <tr>
                <td width="140px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnGuncelle" runat="server" Text="Sepeti Güncelle" OnClick="btnGuncelle_Click" CssClass="button"/>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td class="style9">
                </td>
                <td>
                    <asp:Button ID="btnOnayla" runat="server" CssClass="button" Text="Sepeti Onayla"  OnClick="btnOnayla_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
