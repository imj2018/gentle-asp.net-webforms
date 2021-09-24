<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Simple.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page</title>
    <style type="text/css">
        .auto-style1 {
            width: 480px;
            height: 270px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome To My Demo Site</h1>
        <br />
        <img alt="image1" class="auto-style1" src="images/image1.gif" />
        <br />
        <img alt="" src="images/image2.gif" style="height: 218px; width: 333px" />
        <br />
            <p class="auto-style2">
             This is another line that I want to center

            </p>

        </div>
    </form>

</body>
</html>
