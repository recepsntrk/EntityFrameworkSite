<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="SubcategorysList.aspx.cs" Inherits="Satis.web.Admin.Product.SubcategorysList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
    AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
    DataKeyNames="SubCategoryID" DataSourceID="EntityDataSource1" ForeColor="Black" 
    GridLines="Horizontal" Font-Size="Small">
    <Columns>
        <asp:BoundField DataField="SubCategoryID" HeaderText="Alt Kat. ID" 
            ReadOnly="True" SortExpression="SubCategoryID" />
        <asp:BoundField DataField="SubCategoryName" HeaderText="Alt Kat. Adı" 
            SortExpression="SubCategoryName" />
        <asp:BoundField DataField="CategoryID" HeaderText="KategoriID" 
            SortExpression="CategoryID" />
        <asp:CheckBoxField DataField="ISACTIVE" HeaderText="Aktif" 
            SortExpression="ISACTIVE" />
        <asp:CheckBoxField DataField="ISDELETED" HeaderText="Sil" 
            SortExpression="ISDELETED" />
        <asp:BoundField DataField="ISCREDATE" HeaderText="CREDATE" 
            SortExpression="ISCREDATE" />
        <asp:BoundField DataField="ISMODDATE" HeaderText="MODDATE" 
            SortExpression="ISMODDATE" />
        <asp:BoundField DataField="ISCREUSERID" HeaderText="Ekleyen" 
            SortExpression="ISCREUSERID" />
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
    EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
    EnableUpdate="True" EntitySetName="tblSubCategory">
</asp:EntityDataSource>
</asp:Content>
