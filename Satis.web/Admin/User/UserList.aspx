<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="Satis.web.Admin.User.UserList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
            <div id="contain">
            
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataKeyNames="UyeID" DataSourceID="EntityDataSource1" ForeColor="Black" 
                    GridLines="Horizontal" PageSize="30">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            CancelText="İptal" DeleteText="Sil" EditText="Düzenle" UpdateText="Güncelle" />
                        <asp:BoundField DataField="UyeID" HeaderText="UyeID" ReadOnly="True" 
                            SortExpression="UyeID" />
                        <asp:BoundField DataField="UyeTipID" HeaderText="UyeTipID" 
                            SortExpression="UyeTipID" />
                        <asp:BoundField DataField="UyeAdi" HeaderText="Ad Soyad" 
                            SortExpression="UyeAdi" />
                        <asp:BoundField DataField="UyeMail" HeaderText="Mail" 
                            SortExpression="UyeMail" />
                        <asp:BoundField DataField="UyeTel" HeaderText="Telefon" 
                            SortExpression="UyeTel" />
                        <asp:BoundField DataField="UyeCinsiyeti" HeaderText="Cinsiyet" 
                            SortExpression="UyeCinsiyeti" />
                        <asp:BoundField DataField="UyeDogTarihi" HeaderText="Doğum Tarihi" 
                            SortExpression="UyeDogTarihi" />
                        <asp:BoundField DataField="UyeAdresi" HeaderText="Adres" 
                            SortExpression="UyeAdresi" />
                        <asp:BoundField DataField="AdresIl" HeaderText="il" 
                            SortExpression="AdresIl" />
                        <asp:BoundField DataField="AdresIlce" HeaderText="Ilce" 
                            SortExpression="AdresIlce" />
                        <asp:CheckBoxField DataField="ISACTIVE" HeaderText="Aktif" 
                            SortExpression="ISACTIVE" />
                        <asp:BoundField DataField="ISCREDATE" HeaderText="Credate" 
                            SortExpression="ISCREDATE" />
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
                    EnableUpdate="True" EntitySetName="tblUyeler">
                </asp:EntityDataSource>
            
            </div>
            </asp:Content>

