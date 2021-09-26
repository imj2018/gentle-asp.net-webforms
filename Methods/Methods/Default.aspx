<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Methods.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            length:
            <asp:TextBox ID="TxtLength" runat="server"></asp:TextBox>
            <br />
            <br />
            width:
            <asp:TextBox ID="TxtWidth" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnArea" runat="server" OnClick="BtnArea_Click" Text="Area" />
            <br />
            <br />
            <asp:Label ID="LblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
