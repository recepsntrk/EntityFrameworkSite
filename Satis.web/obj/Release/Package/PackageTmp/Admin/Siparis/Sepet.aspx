<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="Satis.web.Admin.Siparis.Sepet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="ID" DataSourceID="EntityDataSource1" ForeColor="Black" 
        GridLines="Horizontal" PageSize="20">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                SortExpression="ID" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                SortExpression="ProductID" />
            <asp:BoundField DataField="UyeID" HeaderText="UyeID" SortExpression="UyeID" />
            <asp:BoundField DataField="Adet" HeaderText="Adet" SortExpression="Adet" />
            <asp:CheckBoxField DataField="ISACTIVE" HeaderText="ISACTIVE" 
                SortExpression="ISACTIVE" />
            <asp:CheckBoxField DataField="ISDELETED" HeaderText="ISDELETED" 
                SortExpression="ISDELETED" />
            <asp:BoundField DataField="ISCREDATE" HeaderText="ISCREDATE" 
                SortExpression="ISCREDATE" />
            <asp:BoundField DataField="AlimDetayi" HeaderText="AlimDetayi" 
                SortExpression="AlimDetayi" />
            <asp:BoundField DataField="Tutar" HeaderText="Tutar" SortExpression="Tutar" />
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
        ConnectionString="name=SatisEntities" DefaultContainerName="SatisEntities" 
        EnableDelete="True" EnableFlattening="False" EnableInsert="True" 
        EnableUpdate="True" EntitySetName="tblSepet">
    </asp:EntityDataSource>
</asp:Content>
