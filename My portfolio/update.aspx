<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="My_portfolio.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:GridView ID="MessageGridView" CssClass="table" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnRowCommand="MessageGridView_RowCommand">
     <Columns>
         <asp:BoundField DataField="name" HeaderText="name" />
         <asp:BoundField DataField="email" HeaderText="email" />
         <asp:BoundField DataField="phone" HeaderText="phone" />
         <asp:BoundField DataField="subject" HeaderText="subject" />
         <asp:BoundField DataField="message" HeaderText="message" />
         <asp:TemplateField HeaderText="Delete">
                             <ItemTemplate>
                              <asp:LinkButton CommandName="del" ID="Del" CommandArgument='<%#Eval("name") %>' runat="server">Delete</asp:LinkButton>
                           </ItemTemplate>
                       </asp:TemplateField>
     </Columns>
     
 </asp:GridView>
        </div>
    </form>
</body>
</html>
