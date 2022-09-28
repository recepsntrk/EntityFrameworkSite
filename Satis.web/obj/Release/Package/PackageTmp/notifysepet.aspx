<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notifysepet.aspx.cs" Inherits="Satis.web.notifysepet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SepetDeneme</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:800px;height:800px;margin:0 auto;padding:0px 0px 0px 0px">
    <div id="regionSepet" style=" margin: 40px auto;color: #000000; text-align: center; height: auto">
        <asp:GridView ID="GrdSepet" runat="server" AutoGenerateColumns="False" CellPadding="4"
            Width="788px" BackColor="#FFF9F9" BorderColor="#ff8282" BorderWidth="1px" GridLines="Horizontal"
            BackImageUrl="~/Images/Background/white_background.jpg" ViewStateMode="Enabled">
            <Columns>
                <asp:TemplateField HeaderText="Sil">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkDelete" runat="server" BorderStyle="Outset" BorderWidth="15px"
                            BorderColor="#FF8282" />
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
                        <asp:TextBox ID="txtAdet" runat="server" Height="22px" Width="40px" BackColor="#FF8282"
                            ForeColor="White" ToolTip="Adet Giriniz"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Toplam Fiyat" DataField="ToplamFiyat" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#fe4141" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle Height="100px" />
        </asp:GridView>
        <table style="width: 100%; margin-top: 20px;height:120px">
            <tr>
                <td align="left" width="140px">
                    <asp:Button ID="btnGuncelle" runat="server" Text="Sepeti Güncelle" OnClick="btnGuncelle_Click" CssClass="button"/>
                </td>
                <td style="width: 200px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 45px">
                    &nbsp;
                </td>
                <td style="width: auto">
                    Toplam Tutar :
                    <asp:Label ID="lblToplamTutar" runat="server"></asp:Label>
                    &nbsp;TL<br />
                    <br />
                    Kdv Dahil : 
                    <asp:Label ID="lblKdvDahil" runat="server"></asp:Label>
&nbsp;TL</td>
            </tr>
            <tr>
                <td>
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
    </div>
    </form>
</body>
</html>
