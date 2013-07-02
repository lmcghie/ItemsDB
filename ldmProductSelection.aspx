<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ldmAsn3Master.master" 
AutoEventWireup="true" CodeFile="ldmProductSelection.aspx.cs" Inherits="ldmProductSelection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="childbody" Runat="Server">
    <!--Developer:Leonard McGhie 
        Purpose:Display user selected products in gridview -->
   <!--Display special sale code -->
    <asp:Label ID="lblTest" runat="server" CssClass="salelabel"></asp:Label>
   
    <br />
    <!--Display selected category name -->
    <asp:Label ID="lblCategoryName" runat="server" CssClass="head2"></asp:Label> 
    <!--Display product code, product name, unit price,image, and select button in gridview -->
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="ProductCode" DataSourceID="SqlDataSource2" AllowPaging="True" 
        CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" 
                ReadOnly="True" SortExpression="ProductCode" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                SortExpression="UnitPrice" DataFormatString="{0:c}" />
            <asp:TemplateField HeaderText="Image" SortExpression="ImageName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ImageName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" CssClass="pimage" 
                        ImageUrl='<%# Eval("ImageName", "~/Images/{0}") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" SelectText="Show Sale Price" 
                ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <!--Records are displayed based on category code - obtained through query string of categorycode parameter -->
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ShopCartConnectionString %>" 
    
    SelectCommand="SELECT [ProductCode], [ProductName], [UnitPrice], [ImageName] FROM [Products] WHERE ([CategoryCode] = @CategoryCode)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CategoryCode" QueryStringField="CategoryCode" 
                Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
    <!--Display computed discount price in label: 85% of unit price -->
    <asp:Label ID="lblDiscountedPrice" runat="server" CssClass="head3"></asp:Label>
</asp:Content>

