<%@ Page Title="Hesabım | Adin Şekerim" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="Hesabim.aspx.cs" Inherits="Satis.web.Hesabim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height:40px;width:750px;margin-left:30px">
<table width="750" style="font-size:medium;font-weight:bold;height:40px"><tr><td align="right">
    <img src="Images/Button/Arrow-Down.png" /></td><td align="center" width="300">KULLANICI BİLGİLERİ</td><td align="left">
        <img src="Images/Button/Arrow-Down.png" /></td></tr></table>
</div>
<div style="height:auto;width:750px;margin-left:30px;background-color:#b90000;color:White;margin-bottom:20px">
<div style="height:340px;width:395px;float:left;border:1px solid #fff">
<table width="395">
                <tr>
                    <td width="100" height="40">
                        Ad Soyad :
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtAdi" runat="server" Height="20px" Width="190px" MaxLength="50"></asp:TextBox>
                    </td>
                    <td width="100">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdi"
                            ErrorMessage="Zorunlu Alan" ForeColor="White" ValidationGroup="2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="40">
                        E-mail :
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtMail" runat="server" Height="20px" Width="190px" 
                            MaxLength="100"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMail"
                            ErrorMessage="Mail Hatası" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ForeColor="White" ValidationGroup="2"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMail"
                            ErrorMessage="Zorunlu Alan" CssClass="style8" ForeColor="White" 
                            ValidationGroup="2"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                
                <tr>
                    <td width="100" height="40">
                        Telefon :
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtTelefon" runat="server" Height="20px" Width="190px" 
                            MaxLength="30"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="Zorunlu" ValidationGroup="2" ControlToValidate="txtTelefon"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="40">
                        Adres :
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtAdres" runat="server" Height="20px" Width="190px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="Zorunlu" ValidationGroup="2" ControlToValidate="txtAdres"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="40">
                        İl/İlçe :
                    </td>
                    <td>
                        <asp:TextBox ID="txtIl" runat="server" Height="20px" Width="90px" 
                            MaxLength="50"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtIlce" runat="server" Height="20px" Width="90px" 
                            MaxLength="50"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ErrorMessage="Zorunlu" ValidationGroup="2" ControlToValidate="txtIlce"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td width="100" height="40">
                        Doğum Tarihi :
                    </td>
                    <td colspan="2" align="left">
                        <asp:TextBox ID="txtTarih" runat="server" Height="20px" Width="190px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="Zorunlu" ValidationGroup="2" ControlToValidate="txtTarih"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr><td colspan="4" align="center" height="30">
                    <asp:CheckBox ID="chkUyeSil" runat="server" Text="Hesabı Dondur" /></td></tr>
                <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="btnGuncelle" CssClass="button" runat="server" Text="Üyelik Bilgilerini Güncelle" 
                        onclick="btnGuncelle_Click" />
                </td>
                <td>
                    &nbsp;</td>
                </tr>
                                
            </table>
</div>
<div style="height:340px;width:350px;float:left;border:1px solid #fff">
<table width="350"><tr>
                    <td width="70" height="40">
                       Eski Şifre :
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtEskiSifre" runat="server" Height="20px" Width="150px" 
                            TextMode="Password" MaxLength="10"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                        <asp:Label ID="lblSifre" runat="server" Text="Şifre yanlış" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="70" height="40">
                        Şifre :
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtSifresi" runat="server" Height="20px" Width="150px" 
                            TextMode="Password" MaxLength="10"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp; Sadece harf ve rakam kullanınız.</td>
                </tr>
                <tr>
                    <td width="70" height="40">
                        Şifre Tekrar :
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtSifreTekrar" runat="server" Height="20px" Width="150px" 
                            TextMode="Password" MaxLength="10"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblSifreUyusmuyor" runat="server" Text="Şifre Uyuşmuyor." Visible="False"
                            ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                <td align="center" colspan="3" height="50">
                    <asp:Button ID="btnSifreGuncelle" CssClass="button" runat="server" 
                        Text="Şifre Güncelle" onclick="btnSifreGuncelle_Click" />
                </td>
                <td>
                    &nbsp;</td>
                </tr></table>
</div>
<div style="height:40px;width:750px;margin-top:40px;clear:both;background-color:Black">
<table width="750" style="font-size:medium;font-weight:bold;height:40px"><tr><td align="right">
    <img src="Images/Button/Arrow-Down.png" /></td><td align="center" width="300">SİPARİŞ BİLGİLERİ</td><td align="left">
        <img src="Images/Button/Arrow-Down.png" /></td></tr></table>
</div>
<div style="width:750px;height:auto;border:1px solid #fff"><table style="width:auto;height:auto;"><tr><td valign="top">
    <asp:GridView ID="grdSiparis" runat="server" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="false"
        ForeColor="Black" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#000000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <Columns>
        <asp:HyperLinkField DataNavigateUrlFields="SiparisID" DataNavigateUrlFormatString="SiparisDetayi.aspx?ID={0}"
                    HeaderText="Sipariş Detayı" Text="Detay" ItemStyle-BackColor="#000" ControlStyle-ForeColor="White" />
        <asp:BoundField HeaderText="Siparis Numarası" DataField="SiparisID"/>
        <asp:BoundField HeaderText="Siparis Tutarı" DataField="SiparisTutari"/>
        <asp:BoundField HeaderText="Siparis Tarihi" DataField="SiparisTarihi"/>
        <asp:BoundField HeaderText="Siparis Durumu" DataField="SiparisDurumu"/>
        </Columns>
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    </td></tr><tr><td></td></tr></table></div>
</div>
    </asp:Content>
