<%@ Page Title="Adin Şekerim Satış Sayfasına Hoşgeldiniz" Language="C#" MasterPageFile="~/SiteSablon.Master"
     AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Satis.web.Default" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="magicscroll/magicscroll.css" rel="stylesheet" type="text/css" />
    <script src="magicscroll/magicscroll.js" type="text/javascript"></script>
    <script src="magiczoomplus/magiczoomplus.js" type="text/javascript"></script>
    <link href="magiczoomplus/magiczoomplus.css" rel="stylesheet" type="text/css" />
    <link href="Skitter/css/skitter.styles.css" rel="stylesheet" type="text/css" />
    <script src="Skitter/js/highlight.js" type="text/javascript"></script>
    <script src="Skitter/js/jquery.animate-colors-min.js" type="text/javascript"></script>
    <script src="Skitter/js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="Skitter/js/jquery.skitter.js" type="text/javascript"></script>
    <script src="Skitter/js/jquery.skitter.min.js" type="text/javascript"></script>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sliderskit"><div class="border_box"><div class="box_skitter box_skitter_large">
     <asp:Literal ID="Literal1" runat="server" ViewStateMode="Disabled"></asp:Literal></div></div></div>
    <div style="width:810px;height:40px;clear:both;background-color:Black;color:White">
<table style="height:100%;width:100%; font-weight: bold; vertical-align: middle; text-align: center">
<tr><td align="right"><img src="Images/Button/Arrow-Down.png" /></td><td style="width:250px;font-size:medium">KAMPANYA</td><td align="left"><img src="Images/Button/Arrow-Down.png" /></td></tr></table></div>
    <div id="Scrollkampanya"><div class="MagicScroll msborder"><asp:Literal ID="LtrKampanya" runat="server" ViewStateMode="Disabled"></asp:Literal></div></div>
    <div id="filtre"><table width="810"><tr><td width="200">
<asp:Button ID="btnIndirim" CssClass="button" runat="server" Text="İndirimdekiler" OnClick="btnIndirim_Click" ViewStateMode="Disabled"/></td>
    <td width="200"><asp:Button ID="btnEnYeniler" runat="server" Text="En Yeniler" CssClass="button" OnClick="btnEnYeniler_Click" ViewStateMode="Disabled" /></td>
    <td width="200"><asp:Button ID="btnFiyatArtan" CssClass="button" runat="server" Text="Fiyata Göre Artan" OnClick="btnFiyatArtan_Click1" ViewStateMode="Disabled" /></td>    
    <td width="200"><asp:Button ID="btnFiyatAzalan" CssClass="button" runat="server" Text="Fiyata Göre Azalan" OnClick="btnFiyatAzalan_Click" ViewStateMode="Disabled" /></td></tr></table></div>
  <div id="icerik"><asp:ListView ID="lstContent" runat="server" GroupItemCount="5" ViewStateMode="Disabled"><LayoutTemplate>
    <table cellspacing="10" style="position: relative;width:auto">
    <asp:PlaceHolder ID="GroupPlaceHolder" runat="server"></asp:PlaceHolder></table></LayoutTemplate>
   <GroupTemplate><tr><asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder></tr></GroupTemplate><ItemTemplate><td style="height: auto; background-color: #b80000;font-weight:bold;width:150px;border-bottom:10px solid #ffffff;border-radius: 10px; -moz-border-radius: 10px;-webkit-border-radius: 10px;">
 <a id="A1" href='<%# Eval("resim")  %>' runat="server" class="MagicZoomPlus" rel='opacity-reverse:true; zoom-height:280;expand-effect:cubic;zoom-width:300px;background-opacity: 30'>
     <img id="Img1" runat="server" src='<%# Eval("KucukResim")  %>' style="width:150px;height:180px;border-radius: 10px; -moz-border-radius: 10px;-webkit-border-radius: 10px;" /></a><br />
     <a style="color: White; text-decoration: underline" href=' <%# "ProductDetails.aspx?ID=" + Eval("UrunID") %>'><%# Eval("UrunAdi") %></a>
<h1 style="height:10px;font-size:12pt;font-weight:bold;margin-top:2px"> Fiyatı :&nbsp;<%# Eval("KdvDahil")%>TL</h1></td></ItemTemplate></asp:ListView>
 <div id="regiondata" style="background-color: #b80000; margin-top:10px;color:Black;width:800px;float:right;margin-bottom:10px">
   <asp:DataPager ID="DataPagerContent" runat="server" PagedControlID="lstContent" 
    QueryStringField="Page" PageSize="20" OnPreRender="DataPagerContent_PreRender" ViewStateMode="Disabled"> 
  <Fields><asp:NextPreviousPagerField ButtonType="Link"
    ShowFirstPageButton="true" ShowNextPageButton="false" ShowPreviousPageButton="True"
    FirstPageText="İlk" LastPageText=">>" NextPageText=">" PreviousPageText="Geri" ButtonCssClass="sayfalamasol" />
<asp:NumericPagerField ButtonCount="10" NumericButtonCssClass="sayfalama" />
<asp:NextPreviousPagerField ButtonType="Link"
    ShowLastPageButton="true" ShowNextPageButton="True" ShowPreviousPageButton="False"
    FirstPageText="<<" LastPageText="Son" NextPageText="İleri" PreviousPageText="<" ButtonCssClass="sayfalamasag" /></Fields></asp:DataPager></div></div></asp:Content>