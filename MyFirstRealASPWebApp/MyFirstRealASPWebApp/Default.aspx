<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyFirstRealASPWebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 233px">
            <h1>Welcome to my first ASP.NET web application</h1>
            Enter First Name:
            <asp:TextBox ID="TxtFirst" runat="server"></asp:TextBox>
            <br />
            <br />
            Enter Last Name:
            <asp:TextBox ID="TxtLast" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnGo" runat="server" Text="Go" OnClick="BtnGo_Click" />
            <br />
            <br />
            <input id="Button1" type="button" value="button" /><br />
            <hr />
            <asp:Label ID="LblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
