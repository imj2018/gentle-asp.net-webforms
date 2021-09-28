<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Nav.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Navigation Demos<br />
            <br />
            <a href="Page2.aspx">Text Hyperlink using HTML</a><br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Page2.aspx">Go to page 2</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" ImageHeight="100px" ImageUrl="~/images/NextPage.png" ImageWidth="180px">HyperLink</asp:HyperLink>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Yellow" BorderColor="#FF3300" BorderStyle="Solid" OnClick="LinkButton1_Click">Page 2</asp:LinkButton>
            <br />
            <br />
            <asp:Button ID="Button" runat="server" OnClick="Button_Click" Text="Page 2" />
            <br />
            <br />
            Login: <asp:TextBox ID="TxtLogin" runat="server"></asp:TextBox>
            &nbsp;<asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
            <br />
            Password:
            <asp:TextBox ID="TxtPass" runat="server"></asp:TextBox>
            <br />
        </div>
    </form>
</body>
</html>
