<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="SiparisListele.aspx.cs" Inherits="Satis.web.Admin.Siparis.SiparisListele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="SiparisID" DataSourceID="EntityDataSource1" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="887px" 
        Font-Size="Small" AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:CommandField CancelText="İptal" DeleteText="Sil" EditText="Düzenle" 
            ShowDeleteButton="True" ShowEditButton="True" UpdateText="Güncelle" />
        <asp:BoundField DataField="SiparisID" HeaderText="SiparisID" 
            SortExpression="SiparisID" ReadOnly="True" />
        <asp:BoundField DataField="UyeID" HeaderText="UyeID" 
            SortExpression="UyeID" />
        <asp:BoundField DataField="DurumID" HeaderText="DurumID" 
            SortExpression="DurumID" />
        <asp:BoundField DataField="SiparisToplamTutar" HeaderText="ToplamTutar" 
            SortExpression="SiparisToplamTutar" />
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
    EnableFlattening="False" EntitySetName="tblSiparisler" 
        EnableDelete="True" EnableUpdate="True">
</asp:EntityDataSource>
</asp:Content>
