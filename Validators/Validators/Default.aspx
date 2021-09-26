<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Validators.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:
            <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="Missing Name"></asp:RequiredFieldValidator>
            <br />
            <br />
            Pasword:
            <asp:TextBox ID="TxtP1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtP1" ErrorMessage="Missing Password"></asp:RequiredFieldValidator>
            <br />
            <br />
            Re-Type Password:
            <asp:TextBox ID="TxtP2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtP2" ErrorMessage="Missing Password"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtP1" ControlToValidate="TxtP2" ErrorMessage="Passwords don't match"></asp:CompareValidator>
            <br />
            <br />
            Email:
            <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Improper email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            Age:
            <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtAge" ErrorMessage="ages between 0-100 please" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br />
            <br />
            <br />
            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" />
            <br />
        </div>
    </form>
</body>
</html>
