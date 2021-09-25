<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmpInfo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 459px">
            Employee Information<br />
            <br />
            <br />
            Name:
            <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            <br />
            <br />
            Select Office:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Pick City</asp:ListItem>
                <asp:ListItem>Toronto</asp:ListItem>
                <asp:ListItem>New York</asp:ListItem>
                <asp:ListItem>London</asp:ListItem>
            </asp:DropDownList>
&nbsp;
            <asp:Label ID="LblResult" runat="server"></asp:Label>
            <br />
            <br />
            <asp:RadioButton ID="RdoMarketing" runat="server" GroupName="Department" Text="Marketing" />
            <br />
            <asp:RadioButton ID="RdoAccounting" runat="server" GroupName="Department" Text="Accounting" />
            <br />
            <asp:RadioButton ID="RdoLegal" runat="server" GroupName="Department" Text="Legal" />
            <br />
            <br />
            Qualifications<br />
            <asp:CheckBox ID="ChkBA" runat="server" Text="BA" />
            <br />
            <asp:CheckBox ID="ChkMA" runat="server" Text="MA" />
            <br />
            <asp:CheckBox ID="ChkPHD" runat="server" Text="PHD" />
            <br />
            <br />
            <asp:Button ID="BtnGo" runat="server" OnClick="BtnGo_Click" Text="Go" />
            <br />
            <br />
            <asp:Label ID="LblFullResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
