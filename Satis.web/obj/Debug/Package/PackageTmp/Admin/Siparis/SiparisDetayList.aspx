<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="SiparisDetayList.aspx.cs" Inherits="Satis.web.Admin.Siparis.SiparisDetayList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="SiparisDetayID" DataSourceID="EntityDataSource1" 
        Font-Size="Small" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                CancelText="İptal" DeleteText="Sil" EditText="Düzenle" UpdateText="Güncelle" />
            <asp:BoundField DataField="SiparisDetayID" HeaderText="ID" 
                ReadOnly="True" SortExpression="SiparisDetayID" />
            <asp:BoundField DataField="SiparisID" HeaderText="SiparisID" 
                SortExpression="SiparisID" />
            <asp:BoundField DataField="SiparisTipID" HeaderText="TipID" 
                SortExpression="SiparisTipID" />
            <asp:BoundField DataField="ProductID" HeaderText="UrunID" 
                SortExpression="ProductID" />
            <asp:BoundField DataField="Adet" HeaderText="Adet" SortExpression="Adet" />
            <asp:BoundField DataField="AlimDetayi" HeaderText="AlimDetayi" 
                SortExpression="AlimDetayi" />
            <asp:CheckBoxField DataField="ISACTIVE" HeaderText="Aktif" 
                SortExpression="ISACTIVE" />
            <asp:CheckBoxField DataField="ISDELETED" HeaderText="Sil" 
                SortExpression="ISDELETED" />
            <asp:BoundField DataField="ISCREDATE" HeaderText="CREDATE" 
                SortExpression="ISCREDATE" />
            <asp:BoundField DataField="ISMODDATE" HeaderText="MODDATE" 
                SortExpression="ISMODDATE" />
            <asp:BoundField DataField="ISMODUSERID" HeaderText="Düzenleyen" 
                SortExpression="ISMODUSERID" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=SatisEntities" DefaultContainerName="SatisEntities" ContextTypeName="Satis.Data.SatisEntities" 
        EnableDelete="True" EnableFlattening="False" EnableUpdate="True" 
        EntitySetName="tblSiparisDetaylari">
    </asp:EntityDataSource>
</asp:Content>
