<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Satis.web.Admin.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
            <div id="contain">
            
                <table>
                    <tr>
                        <td align="left" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" DataSourceID="EntityCategory" ForeColor="Black" 
                                GridLines="Horizontal">
                                <Columns>
                                    <asp:BoundField DataField="CategoryID" HeaderText="KategoriID" ReadOnly="True" 
                                        SortExpression="CategoryID" />
                                    <asp:BoundField DataField="CategoryName" HeaderText="Adı" ReadOnly="True" 
                                        SortExpression="CategoryName" />
                                    <asp:CheckBoxField DataField="ISDELETED" HeaderText="Sil" ReadOnly="True" 
                                        SortExpression="ISDELETED" />
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
                            <asp:EntityDataSource ID="EntityCategory" runat="server" 
                                ConnectionString="name=SatisEntities" DefaultContainerName="SatisEntities" ContextTypeName="Satis.Data.SatisEntities" 
                                EnableFlattening="False" EntitySetName="tblCategory" 
                                Select="it.[CategoryID], it.[CategoryName], it.[ISDELETED]">
                            </asp:EntityDataSource>
                        </td>
                        <td align="left" valign="top">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" DataSourceID="EntityDataSource1" ForeColor="Black" 
                                GridLines="Horizontal">
                                <Columns>
                                    <asp:BoundField DataField="UyeID" HeaderText="UyeID" ReadOnly="True" 
                                        SortExpression="UyeID" />
                                    <asp:BoundField DataField="UyeTipID" HeaderText="UyeTipID" ReadOnly="True" 
                                        SortExpression="UyeTipID" />
                                    <asp:BoundField DataField="UyeAdi" HeaderText="UyeAdi" ReadOnly="True" 
                                        SortExpression="UyeAdi" />
                                    <asp:BoundField DataField="UyeMail" HeaderText="UyeMail" ReadOnly="True" 
                                        SortExpression="UyeMail" />
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
                            <asp:EntityDataSource ID="EntitySubCategory" runat="server" 
                                ConnectionString="name=SatisEntities" DefaultContainerName="SatisEntities" ContextTypeName="Satis.Data.SatisEntities" 
                                EnableFlattening="False" EntitySetName="tblSubCategory" 
                                Select="it.[SubCategoryID], it.[SubCategoryName], it.[CategoryID], it.[ISDELETED]">
                            </asp:EntityDataSource>
                        </td>
                        <td align="left" valign="top">
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" DataSourceID="EntityProduct" ForeColor="Black" 
                                GridLines="Horizontal" PageSize="12">
                                <Columns>
                                    <asp:BoundField DataField="ProductID" HeaderText="UrunID" ReadOnly="True" 
                                        SortExpression="ProductID" />
                                    <asp:BoundField DataField="ProductName" HeaderText="Adı" ReadOnly="True" 
                                        SortExpression="ProductName" />
                                    <asp:BoundField DataField="SubCategoryID" HeaderText="Alt KatID" 
                                        ReadOnly="True" SortExpression="SubCategoryID" />
                                    <asp:BoundField DataField="KdvDahil" HeaderText="KdvDahil" ReadOnly="True" 
                                        SortExpression="KdvDahil" />
                                    <asp:CheckBoxField DataField="ISDELETED" HeaderText="Sil" ReadOnly="True" 
                                        SortExpression="ISDELETED" />
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
                            <asp:EntityDataSource ID="EntityProduct" runat="server" 
                                ConnectionString="name=SatisEntities" DefaultContainerName="SatisEntities" ContextTypeName="Satis.Data.SatisEntities" 
                                EnableFlattening="False" EntitySetName="tblProduct" 
                                Select="it.[ProductID], it.[ProductName], it.[SubCategoryID], it.[KdvDahil], it.[ISDELETED]">
                            </asp:EntityDataSource>
                        </td>
                        <td align="left" valign="top">
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" DataSourceID="EntityDataSource1" ForeColor="Black" 
                                GridLines="Horizontal" PageSize="12">
                                <Columns>
                                    <asp:BoundField DataField="UyeID" HeaderText="UyeID" ReadOnly="True" 
                                        SortExpression="UyeID" />
                                    <asp:BoundField DataField="UyeTipID" HeaderText="UyeTipID" ReadOnly="True" 
                                        SortExpression="UyeTipID" />
                                    <asp:BoundField DataField="UyeAdi" HeaderText="UyeAdi" ReadOnly="True" 
                                        SortExpression="UyeAdi" />
                                    <asp:BoundField DataField="UyeMail" HeaderText="UyeMail" ReadOnly="True" 
                                        SortExpression="UyeMail" />
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
                                EnableFlattening="False" EntitySetName="tblUyeler" 
                                Select="it.[UyeID], it.[UyeTipID], it.[UyeAdi], it.[UyeMail]">
                            </asp:EntityDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            
            </div>
            </asp:Content>

