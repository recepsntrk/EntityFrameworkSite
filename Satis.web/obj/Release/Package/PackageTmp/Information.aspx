<%@ Page Title="Bilgi | Adin Şekerim" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="Satis.web.Information" ViewStateMode="Disabled" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image1" runat="server" 
        ImageUrl="~/Images/Button/yapim_asamasinda.jpg" />
<div id="region" style="background-color:#fff9f9;font-size:small;font-style:italic;margin-top:40px;margin-left:30px">
    <asp:Panel ID="pnlSartlar" runat="server" Visible="false">
    <table style="width:100%">
    <tr>
    <td>
    Şartlar
    </td>
    </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="pnlIade" runat="server" Visible="false">
        <table style="width:100%">
    <tr>
    <td>
    Geri iade
    </td>
    </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="pnlOdeme" runat="server" Visible="false">
        <table style="width:100%">
    <tr>
    <td>
    Ödeme
    </td>
    </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="pnlTeslimat" runat="server" Visible="false">
        <table style="width:100%">
    <tr>
    <td>
    Teslimat
    </td>
    </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="pnlGizlilik" runat="server" Visible="false">
        <table style="width:100%">
    <tr>
    <td>
    Gizlilik
    </td>
    </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="pnlSorular" runat="server" Visible="false">
        <table style="width:100%">
    <tr>
    <td>
    Sorular
    </td>
    </tr>
    </table>
    </asp:Panel>
</div>

</asp:Content>
