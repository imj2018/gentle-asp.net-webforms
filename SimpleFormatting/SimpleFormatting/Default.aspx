<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimpleFormatting.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: "Courier New", Courier, monospace;
        }
        .auto-style1 {
            color: #CC3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Text Formatting plus other stuff<br />
            <br />
            In this line of text I will demonstrate on to change the <span class="newStyle1">font</span> and <span class="auto-style1">color</span><br />
            <br />
            Click here to go to <a href="http://cnn.com">CNN</a><br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="196px" ImageUrl="~/images/image1.jpg" Width="171px" />
        </div>
    </form>
</body>
</html>
