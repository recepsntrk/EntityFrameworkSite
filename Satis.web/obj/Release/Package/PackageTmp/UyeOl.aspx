<%@ Page Title="Üye Ol | Adin Şekerim" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true"
    CodeBehind="UyeOl.aspx.cs" Inherits="Satis.web.UyeOl" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
.inputclass{ background:url('Images/Button/username.png');background-repeat:no-repeat }
.inputclass:focus{ background:#FFF; }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="region" style="font-size: small; margin-left: 50px; margin-top: 40px; background-color: #fff9f9;
        color: #003300; font-style: italic">
        <asp:Panel ID="pnlKayit" runat="server" >
            <table width="450">
                <tr>
                    <td width="100" height="40">
                        Ad Soyad :
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtAdi" runat="server" Height="20px" Width="190px" MaxLength="50"></asp:TextBox>
                    </td>
                    <td width="150">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdi"
                            ErrorMessage="Zorunlu Alan" ForeColor="#003300" ValidationGroup="2"></asp:RequiredFieldValidator>
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
                            ForeColor="#003300" ValidationGroup="2"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMail"
                            ErrorMessage="Zorunlu Alan" CssClass="style8" ForeColor="#003300" 
                            ValidationGroup="2"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblMailVar" runat="server" Text="Bu mail sistemimizde Kayıtlı" Visible="False"
                            ForeColor="#003300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="40">
                        Şifre :
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtSifresi" runat="server" Height="20px" Width="190px" 
                            TextMode="Password" MaxLength="10"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp; Sadece harf ve rakam kullanınız.</td>
                </tr>
                <tr>
                    <td width="100" height="40">
                        Şifre Tekrar :
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtSifreTekrar" runat="server" Height="20px" Width="190px" 
                            TextMode="Password" MaxLength="10"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblSifreUyusmuyor" runat="server" Text="Şifre Uyuşmuyor." Visible="False"
                            ForeColor="#003300"></asp:Label>
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
                        Cinsiyet :
                    </td>
                    <td>
                        <asp:RadioButton ID="rbErkek" runat="server" Font-Bold="True" Font-Italic="True"
                            Font-Size="Small" ForeColor="#003300" Text="Erkek" GroupName="Cins" CssClass="style49" />
                    </td>
                    <td>
                        <asp:RadioButton ID="rbKadin" runat="server" Font-Bold="True" Font-Italic="True"
                            Font-Size="Small" ForeColor="#003300" Text="Kadın" GroupName="Cins" CssClass="style49" />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td width="100" height="40">
                        Doğum Tarihi :
                    </td>
                    <td colspan="2" align="left">
                        &nbsp;<asp:TextBox ID="txtTarih" runat="server" Height="20px"></asp:TextBox>
                        <asp:CalendarExtender ID="txtTarih_CalendarExtender" runat="server" Enabled="True"
                            TargetControlID="txtTarih" Format="yyyy.MM.dd" DefaultView="Years" TodaysDateFormat="d MMMM, yyyy">
                        </asp:CalendarExtender>
                    </td>
                    <td>
                        &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="Zorunlu" ValidationGroup="2" ControlToValidate="txtTarih"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <table width="450">
                <tr>
                    <td height="42">
                        <b>
                            <asp:CheckBox ID="chkSozlesme" runat="server" Text="Üyelik Sözleşmesini okudum kabul ediyorum"
                                ForeColor="#003300" CssClass="style46" Font-Italic="True" />
                        </b>
                    </td>
                    <td width="100">
                        <asp:Button ID="btnUyeOl" runat="server" BackColor="#FF8282" BorderStyle="None" ForeColor="White"
                            Height="25px" Text="Kayıt Ol" Width="70px" OnClick="btnUyeOl_Click" 
                            CssClass="style47" ValidationGroup="2" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="pnlGiris" runat="server" Visible="False">
                <table style="font-size:large;width:100%;height:200px">
        <tr>
        <td align="center">
        Kayıdınız Başarıyla Gerçekleştirildi.Site Giriş kısmından E-mail ve şifrenizi girerek sisteme giriş yapabilirsiniz.
            <br />
            Ana Sayfaya Yönlendiliyorsunuz...........</td>
        </tr>
        <tr>
        <td align="center">
        TEŞEKKÜRLER
        </td>
        </tr>
        </table>
        </asp:Panel>
    </div>
</asp:Content>
