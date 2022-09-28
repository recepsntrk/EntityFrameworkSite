<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="DavetiyeList.aspx.cs" Inherits="Satis.web.DavetiyeList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="800">
    <tr>
    <td>Giriş Yapın</td>
    <td>Ücretsiz Üye Olun</td>
    </tr>
    <tr>
    <td><table width="150" border="0" height="300">
  <tr>
    <td>Kullanıcı Adı</td>
  </tr>
  <tr>
    <td><asp:TextBox ID="txtUyeAdi" CssClass="usernameclass" runat="server" BackColor="White"
            BorderStyle="None" ForeColor="#003300" Height="20px" Width="156px" MaxLength="100"></asp:TextBox></td>
  </tr>
  <tr>
    <td>Şifre</td>
  </tr>
  <tr>
    <td ><asp:TextBox ID="txtSifre" CssClass="keyclass" runat="server" BackColor="White" BorderStyle="None" ForeColor="#003300"
            Height="20px" TextMode="Password" Width="156px" Font-Strikeout="False" MaxLength="10"></asp:TextBox></td>
  </tr>
  <tr>
    <td><asp:CheckBox ID="chkHatirla" runat="server" BorderColor="#336600" Font-Italic="True"
            Font-Underline="False" ForeColor="White" Text="Beni Hatırla" 
            Font-Size="Small" Font-Bold="True" ViewStateMode="Disabled" /></td>
  </tr>
  <tr>
    <td><asp:Button ID="btnGiris" runat="server" 
            BackColor="White" BorderStyle="None" Font-Italic="True"
            Height="20px" OnClick="btnGiris_Click" Text="Giriş" Width="80px" 
            ViewStateMode="Disabled" /></td>
  </tr>
  <tr><td height="100"></td></tr>
</table></td>
    <td  style="border-left:1px solid #fff"><table width="550">
                <tr>
                    <td width="100" height="30">
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
                    <td width="100" height="30">
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
                    <td width="100" height="30">
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
                    <td width="100" height="30">
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
                    <td width="100" height="30">
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
                    <td width="100" height="30">
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
                    <td width="100" height="30">
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
                    <td width="100" height="30">
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
                    <td width="100" height="30">
                        Doğum Tarihi :
                    </td>
                    <td colspan="2" align="left">
                        &nbsp;<asp:TextBox ID="txtTarih" runat="server" Height="20px"></asp:TextBox>
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
            </table></td>
    </tr>
    </table>
</asp:Content>
