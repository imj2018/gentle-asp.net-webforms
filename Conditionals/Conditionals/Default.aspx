﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Conditionals.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Pick your favourite food from the list below<br />
        <br />
        <asp:RadioButton ID="RdoPizza" runat="server" GroupName="Food" Text="Pizza" />
        <br />
        <asp:RadioButton ID="RdoSalad" runat="server" GroupName="Food" Text="Salad" />
        <br />
        <asp:RadioButton ID="RdoPeanutButter" runat="server" GroupName="Food" Text="Peanut Butter" />
        <br />
        <br />
        <asp:Button ID="BtnResult" runat="server" OnClick="BtnResult_Click" Text="Result" />
        <br />
        <br />
        <asp:Label ID="LblResult" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Image ID="ImgFood" runat="server" Height="100px" Width="100px" />
    
        <br />
        <br />
        What&#39;s your favourite programming language<br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True">
            <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Python</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="BtnLanguages" runat="server" OnClick="BtnLanguages_Click" Text="Favourite Languages" />
        <br />
    
    </div>
    </form>
</body>
</html>
