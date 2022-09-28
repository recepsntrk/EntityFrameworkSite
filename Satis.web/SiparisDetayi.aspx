<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="SiparisDetayi.aspx.cs" Inherits="Satis.web.SiparisDetayi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height:40px;width:760px;color:White;background-color:#000000;margin-left:30px">
<table width="760" style="font-size:medium;font-weight:bold;height:40px"><tr><td align="right">
    <img src="Images/Button/Arrow-Down.png" /></td><td align="center" Width="370">
        <asp:Label ID="lblsiparisdetayi" runat="server"></asp:Label></td><td align="left">
        <img src="Images/Button/Arrow-Down.png" /></td></tr></table>
</div>
<div id="regionSatinal" style="border-top: 1px solid #ff8282; height: auto; margin-left: 30px;width:760px">
        <table style="max-width:760px">
        <tr>
        <td>
                <asp:GridView ID="grdSiparis" runat="server" BackColor="#b80000" AutoGenerateColumns="false"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            Font-Size="Small" ForeColor="White" GridLines="Horizontal" Width="760px">
            <Columns>
            <asp:BoundField HeaderText="Urun Kodu" DataField="UrunID" ItemStyle-Width="50" 
                    HeaderStyle-Width="70" ItemStyle-HorizontalAlign="Center">
<HeaderStyle Width="70px"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                </asp:BoundField>
            <asp:TemplateField HeaderText="Resmi">
                    <ItemTemplate>
                        <asp:Image ID="imgUrun" runat="server" Width="80" Height="90" ImageUrl='<%# Eval("Resim") %>' ItemStyle-Width="80" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Adet" DataField="Adet" HeaderStyle-Width="70" 
                    HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
<HeaderStyle HorizontalAlign="Center" Width="70px"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="Alım Detayı" DataField="AlimDetayi" 
                    ItemStyle-Width="560" >
<ItemStyle Width="560px"></ItemStyle>
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#000000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#b80000" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        </td>
        </tr>
        <tr>
        <td align="right" style="font-size:medium;font-weight:bold;height:40px">
            Sipariş Toplam Tutarı :
            <asp:Label ID="lblToplamTutar" runat="server" Text="Label"></asp:Label>&nbsp;TL</td>
        </tr>
        </table>

    </div>
</asp:Content>
