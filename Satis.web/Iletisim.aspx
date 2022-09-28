<%@ Page Title="İletişim | Adin Şekerim" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true"
    CodeBehind="Iletisim.aspx.cs" Inherits="Satis.web.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .style9
        {
            background-color: #b90000;
        }
        .style10
        {
            font-style: italic;
            background-color: #b90000;
        }
        .style12
        {
            color: #003300;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="background-color:#b90000;width:600px;margin:40px auto;border-radius: 10px; -moz-border-radius: 10px;-webkit-border-radius: 10px">
    <table style="font-size: small">
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td colspan="2" style="height: 35px">
                <asp:Label ID="lblInfo" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td class="style10">
                Sorunuzun Konusu :
            </td>
            <td align="left" colspan="2" style="height: 30px" class="style9">
                <asp:TextBox ID="txtKonu" runat="server" Height="20px" Style="text-align: left" 
                    Width="390px" CssClass="style12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtKonu" ErrorMessage=" *" ValidationGroup="3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td class="style10" style="width:150px">
                Ad-Soyad :
            </td>
            <td align="left" style="height: 30px" class="style9">
                <asp:TextBox ID="txtIsim" runat="server"
                    Height="20px" Width="199px" CssClass="style12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtIsim" ErrorMessage="*" ValidationGroup="3"></asp:RequiredFieldValidator>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
            </td>
            <td class="style10" >
                E-Mail :
            </td>
            <td style="text-align: left" style="height: 30px" class="style9">
                <asp:TextBox ID="txtMail" runat="server"
                    Height="20px" Width="199px" CssClass="style12"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtMail" ErrorMessage="**" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="3"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtMail" ErrorMessage="*" ValidationGroup="3"></asp:RequiredFieldValidator>
            </td>
            <td class="style9" >
                &nbsp;</td>
        </tr>
        <tr>
            <td>
            </td>
            <td class="style10">
                Telefon :
            </td>
            <td colspan="2" align="left" style="height: 30px" class="style9">
                <asp:TextBox ID="txtTelefon" runat="server"
                    Height="20px" Width="200px" CssClass="style12" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtTelefon" ErrorMessage="*" ValidationGroup="3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:30px"></td>
            
            <td class="style10" >
                Mesajınız :
            </td>
            <td colspan="2" align="left" style="height: 30px" class="style9">
                <asp:TextBox ID="txtMesaj" runat="server"
                    Height="270px" Rows="50" Style="text-align: left" TextMode="MultiLine" 
                    Width="390px" CssClass="style12"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td class="style9">
                <asp:Button ID="btnGonder" runat="server" CssClass="button" Text="Gönder" onclick="btnGonder_Click" 
                    ValidationGroup="3" />
            </td>
            <td colspan="2" class="style10">
                
                Sorularınıza gün içerisinde cevap verilecektir.</td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td colspan="3">
            </td>
        </tr>
    </table></div>
</asp:Content>
