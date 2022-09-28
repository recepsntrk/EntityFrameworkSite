<%@ Page Title="Şifre Hatırlat | Adin Şekerim" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="SifreHatirlat.aspx.cs" Inherits="Satis.web.SifreHatirlat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="region" 
        style="background-color:#b80000;width:500px;height:180px;font-size:small;font-style:italic; color: #ffffff;margin-left:50px;margin-top:40px;border-radius: 10px; -moz-border-radius: 10px;-webkit-border-radius: 10px">
    <table style="height:170px">
    <tr>
        <td colspan="3">
            Lütfen sistemimizde kayıtlı mail adresinizi giriniz. Yeni şifreniz adresinize 
            gönderilecektir.</td>
    </tr>
    <tr>
        <td >
&nbsp; E-mail adresiniz :</td>
        <td >
            <asp:TextBox ID="txtMail" runat="server" 
                Height="20px" Width="230"></asp:TextBox>
        </td>
        <td >
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtMail" ErrorMessage="Mail Biçimi hatalı"  
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td >
        </td>
        <td align="center">
            <asp:Button ID="btnGonder" runat="server" CssClass="button"
                onclick="btnGonder_Click" Text="Gönder" />
        </td>
        <td >
            <asp:Label ID="lblInfo" runat="server"  
                Text="Mail sistemimizde Kayıtlı değil" Visible="False"></asp:Label>
        </td>
    </tr>
</table>
</div>
</asp:Content>
