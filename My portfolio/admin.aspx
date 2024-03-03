<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="My_portfolio.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Section</title>
     <link rel="stylesheet" href="style.css" />
</head>
<body>
      <form id="form1" runat="server">
        <div>
            <h1>Admin Login Page</h1>
        </div>
        
      
        
   <asp:Table ID="Table1" runat="server" Width="612px">
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label1" runat="server" Text="Enter UserName:"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label2" runat="server" Text="Enter Password:"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="Label3" runat="server" Text="Enter Email:"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
</asp:Table>


      
        
        <asp:Button  ID="BtnLogin" runat="server" Text="Login" TextMode="Password" OnClick="BtnLogin_Click" />
        <asp:Button  ID="showMessage" runat="server" Text="showWhoMessagesYou" OnClick="showMessage_Click" />
       
      
        
    </form>
</body>
</html>
