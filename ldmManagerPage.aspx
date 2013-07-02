<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ldmManagerPage.aspx.cs" Inherits="ldmManagerPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<!--Developer: Leonard McGhie
    Purpose: Configure the weekly sales discount - sales managers only -->
    <link href="Styles/PepsiStyle.css" rel="stylesheet" type="text/css" />
    <title>Sales Manager Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1" >
        <tr> <td colspan="2">
        <asp:Image ID="imgManLogo" runat="server" ImageUrl="~/Images/Logo.jpg" />
        <h2>Enter the weekly discount category. Limit of one category per entry.</h2>
        </td></tr>
        <tr><td>
        <asp:TextBox ID="txtDiscount" runat="server" CssClass="salebox"> </asp:TextBox> </td>
        <td> <asp:Button ID="btnDiscount" runat="server" Text="Submit" 
                onclick="btnDiscount_Click"></asp:Button> </td>
         </tr>
         <tr><td>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>        
        <td><asp:HyperLink ID="hylToHome" runat="server" NavigateUrl="~/ldmHome.aspx">Homepage</asp:HyperLink>
        </td></tr>
        
        
        </table>
    </div>
    </form>
</body>
</html>
