<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MultiPage.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 176px;
            height: 241px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome to my Web Application</h1>
            <br />
            <img alt="image1" class="auto-style1" src="images/image1.jpg" />&nbsp;
            <asp:Label ID="LblWelcome" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            Click here to go to <a href="Page2.aspx">page 2</a><br />
            <br />
            <a href="Page2.aspx">Please click here to go to page 2</a></div>
    </form>
</body>
</html>
