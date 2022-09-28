<%@ Page Title="Ürün Detayları | Adin Şekerim" Language="C#" MasterPageFile="~/SiteSablon.Master"
    AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Satis.web.ProductDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="regionResim" style="width: 800px; height: 600px;float:right;right:0px">
      <asp:Image ID="imgBuyuk" runat="server" Height="600" Width="800"
          ViewStateMode="Disabled" AlternateText="Resim Bulunamadı" /></div>
<div id="filtre"><table width="810" height="40"><tr><td></td><td>
    <asp:Button ID="btnGenel" runat="server" CssClass="button" Text="Genel" OnClick="btnGenel_Click" ViewStateMode="Disabled" /></td>
  <td><asp:Button ID="btnAciklama" runat="server" CssClass="button" Text="Açıklama" OnClick="btnAciklama_Click" ViewStateMode="Disabled" /></td>
  <td><asp:Button ID="btnProductProperty" runat="server" CssClass="button" Text="Özellikler" OnClick="btnProductProperty_Click" ViewStateMode="Disabled" /></td>
  <td width="169"><asp:Button ID="btnOdemeSecenekleri" runat="server" CssClass="button" Text="Ödeme Seçenekleri" OnClick="btnOdemeSecenekleri_Click" ViewStateMode="Disabled" /></td></tr></table></div>
<div id="regionDetay" style="margin-top: 10px; width: 800px; height: auto; float: right;right:0px;background-color:#b80000;color:White;margin-bottom:20px;border-radius: 10px; -moz-border-radius: 10px;-webkit-border-radius: 10px;clear:both">
   <asp:Panel ID="pnlGenel" runat="server" Visible="True">
   <div id="regionGrid" style="border-right: 1px solid #ff8282;height: 500px; margin-top:30px; text-align: left; float: left">
     <asp:DataList ID="DtListDetail" runat="server"
           ShowFooter="False" ShowHeader="False" ViewStateMode="Disabled">
      <ItemTemplate><div id="regionFix" style=" float: left; height: 100%; width: 250px; position: relative">
   <table style="height: 400px; width: 250px">
       <tr><td width="90">Ürün Adı :</td><td width="135"><%# Eval("UrunAdi") %></td></tr>
       <tr><td>Ürün Kodu :</td><td><%# Eval("UrunID") %></td></tr>
       <tr><td>Fiyatı :</td><td><%# Eval("Fiyati") %> TL</td></tr>
       <tr><td>KDV Dahil :</td><td><%# Eval("KdvDahil")%> TL</td></tr>
       <tr><td>Stoğu :</td><td><%# Eval("stogu") %> Adet</td></tr>               
       <tr><td>Ebatı :</td><td><%# Eval("Boyutu") %></td></tr>   
       <tr><td colspan="2" align="center">Açıklama</td></tr>
       <tr><td height="80" colspan="2" valign="top" style="background-color: #FFFFFF;color:Black"><p><%# Eval("Detayi") %></p></td></tr></table></div></ItemTemplate></asp:DataList>
   <table style="margin-top: 10px; width: 250px;height: 50px">
       <tr><td><asp:DropDownList ID="ddlAdet" runat="server" CssClass="dropdownlist"><asp:ListItem Text="1" Value="1"></asp:ListItem>
        <asp:ListItem Text="25" Value="25"></asp:ListItem>
        <asp:ListItem Text="50" Value="50"></asp:ListItem>
        <asp:ListItem Text="100" Value="100"></asp:ListItem></asp:DropDownList></td>
        <td><asp:Button ID="btnSepeteEkle" runat="server" CssClass="button" OnClick="btnSepeteEkle_Click" Text="SepeteEkle"  ValidationGroup="1" /></td></tr> 
       <tr><td colspan="2"><asp:Label ID="lblInfo" runat="server" ViewStateMode="Enabled"></asp:Label></td></tr></table></div>
    <div id="satinal" style="height: 500px; width: 500px; margin-left: 0px;margin-top: 30px; float: right">
      <asp:Panel ID="pnlRight" runat="server"><asp:Panel ID="pnlNikah" runat="server" Visible="False">
    <table style="width: 100%"><tr><td align="center" colspan="3">&nbsp;</td></tr>
  <tr><td rowspan="3" style="width: 90px"><asp:Image ID="imgNikah" runat="server" 
          Height="110px" Width="90px" ViewStateMode="Disabled" /></td><td align="center">Gelin Adı :</td>
      <td width="286" style="height: 30px"><asp:TextBox ID="txtGelinAdi" runat="server" BorderStyle="Groove" Height="22px" Width="200px"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtGelinAdi" ErrorMessage="**" ValidationGroup="1"></asp:RequiredFieldValidator></td></tr>
  <tr><td align="center">Damat Adı :</td>
      <td style="height: 30px"><asp:TextBox ID="txtDamatAdi" runat="server" BorderStyle="Groove" Height="22px" Width="200px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**" ControlToValidate="txtDamatAdi" ValidationGroup="1"></asp:RequiredFieldValidator></td></tr>
  <tr><td align="center"> Nikah Tarihi :</td>
      <td style="height: 30px"><asp:TextBox ID="txtNikahTarihi" runat="server" BorderStyle="Groove" Height="22px" Width="200px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="**" ControlToValidate="txtNikahTarihi" ValidationGroup="1"></asp:RequiredFieldValidator>
          <asp:CalendarExtender ID="txtNikahTarihi_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtNikahTarihi"></asp:CalendarExtender></td></tr>
  <tr><td align="center" style="height: 30px" colspan="3"><asp:Label ID="lblNikah" runat="server"></asp:Label></td></tr></table></asp:Panel></asp:Panel>
          <asp:Panel ID="pnlBebek" runat="server" Visible="false"><table style="width: 100%">
      <tr><td colspan="3" align="center">&nbsp;</td></tr>
      <tr><td rowspan="2" style="width: 90px"><asp:Image ID="imgBebek" runat="server" 
              Height="110px" Width="90px" ViewStateMode="Disabled" /></td>
          <td align="center" style="height: 30px">Bebek Adı :</td>
          <td style="height: 30px"><asp:TextBox ID="txtBebekAdi" runat="server" BorderStyle="Groove" Height="22px" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBebekAdi" ErrorMessage="**" ValidationGroup="1"></asp:RequiredFieldValidator></td></tr>
      <tr><td align="center" style="height: 30px"> Doğum Tarihi :</td>
          <td><asp:TextBox ID="txtDogumTarihi" runat="server" BorderStyle="Groove" Height="22px" Width="200px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDogumTarihi"
              ErrorMessage="**" ValidationGroup="1"></asp:RequiredFieldValidator>
          <asp:CalendarExtender ID="txtDogumTarihi_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtDogumTarihi"></asp:CalendarExtender></td></tr>
      <tr><td align="center" style="height: 30px" colspan="3"><asp:Label ID="lblBebek" runat="server"></asp:Label></td></tr></table></asp:Panel>
 <asp:Panel ID="pnlSunnet" runat="server" Visible="False"><table style="width: 100%"><tr><td colspan="3" align="center">
     &nbsp;</td></tr>
    <tr><td rowspan="2" style="width: 90px"><asp:Image ID="imgSunnet" runat="server" 
            Height="110px" Width="90px" ViewStateMode="Disabled" /></td>
        <td align="center" style="height: 30px">Çocuk Adı :</td>
        <td><asp:TextBox ID="txtCocukAdi" runat="server" BorderStyle="Groove" Height="22px" Width="200px"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCocukAdi" ErrorMessage="**" ValidationGroup="1"></asp:RequiredFieldValidator></td></tr>
    <tr><td align="center" style="height: 30px">Sünnet Tarihi :</td>
        <td><asp:TextBox ID="txtSunnetTarihi" runat="server" BorderStyle="Groove" Height="22px" Width="200px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtSunnetTarihi"
             ErrorMessage="**" ValidationGroup="1"></asp:RequiredFieldValidator>
          <asp:CalendarExtender ID="txtSunnetTarihi_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtSunnetTarihi"></asp:CalendarExtender></td></tr>
    <tr><td align="center" style="height: 30px" colspan="3"><asp:Label ID="lblSunnet" runat="server"></asp:Label></td></tr></table></asp:Panel>
 <asp:Panel ID="pnlSecenek" runat="server" Visible="False"><table style="margin-top: 20px; width: 100%">
    <tr><td colspan="2" align="center">Şeker Seçeneği
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="rblSeker" ErrorMessage="**" ValidationGroup="1"></asp:RequiredFieldValidator></td></tr>
    <tr><td colspan="2" height="120" align="center">
      <asp:RadioButtonList ID="rblSeker" runat="server" Height="110px" Width="100%">
       <asp:ListItem Text="Lavanta - (Fiyat farkı yoktur)" Value="Lavanta"> </asp:ListItem>
       <asp:ListItem Text="Badem şekeri - 3 adet eklenir. (Fiyat farkı yoktur) " Value="Badem şekeri"> </asp:ListItem>
       <asp:ListItem Text="Çikolatalı badem Sekeri - (2 adet eklenir.)Adet +0.20TL " Value="Çikolatalı badem Sekeri"> </asp:ListItem></asp:RadioButtonList></td></tr>
    <tr><td height="40" colspan="2" align="left"><asp:CheckBox ID="chkMiknatis" runat="server" Text="Mıknatıs Adet (+0,1 TL)" /></td></tr>
    <tr><td height="30" colspan="2" align="left">Eklemek istediğiniz Not</td></tr>
    <tr><td colspan="2" height="70" align="left"><asp:TextBox ID="txtNot" runat="server" Height="60px" Width="480" TextMode="MultiLine"></asp:TextBox></td></tr>
    <tr><td height="40" align="center"></td><td align="left"></td></tr>
    <tr><td width="174"></td><td width="201"></td></tr></table></asp:Panel>
 <asp:Panel ID="pnlDiger" runat="server" Visible="false">
     <table style="margin-top: 40px; width: 470px"><tr><td height="30" colspan="2" align="left">Eklemek istediğiniz Not</td></tr>
  <tr><td colspan="2" height="70" align="left"><asp:TextBox ID="txtNotDiger" runat="server" Height="60px" Width="100%" TextMode="MultiLine"></asp:TextBox></td></tr>
  <tr><td height="40" align="center"></td>
      <td align="left"></td></tr></table></asp:Panel></div></asp:Panel></div>
     <asp:Panel ID="pnlAciklama" runat="server" Visible="False" 
         ViewStateMode="Disabled">
    <table width="100%" style="padding: 10px; margin: 30px auto;margin-bottom:50px;color:White">
       <tr><td height="30">* Tüm ürünlerde isim etiketi vardır ve ücretsizdir.</td></tr>
       <tr><td height="30">* Ağır olmayan tüm ürünlere mıknatıs eklenebilir. 100 adet için 12 TL.dir.</td></tr>
       <tr><td height="30">* Ürünler lavanta, badem şekeri ya da çikolatalı badem şekeri ile hazırlanabilir.</td></tr>
       <tr><td height="30">* Ürünlerde ekran görüntüsü ile orjinali arasında renk tonlarında farklılık olabilir.</td></tr>
       <tr><td height="30">* Anlaşmalı kargomuz ile tüm Türkiye' ye uygun fiyatlara gönderim yapılmaktadır.</td></tr>
       <tr><td height="30">* Ürün hazırlama süresi 1 ile 5 gün arasındadır.</td></tr>
       <tr><td height="30">* Acil siparişleriniz için firmamızdan bilgi alabilirsiniz. (0212) 424 0 410<br /><br /></td></tr></table></asp:Panel>
  <asp:Panel ID="pnlOzellikler" runat="server" Visible="False">Özellikler vs gelicek</asp:Panel>
  <asp:Panel ID="pnlOdeme" runat="server" Visible="False">Ödeme seçenekleri gelicek</asp:Panel>
</asp:Content>
