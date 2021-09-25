<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PizzaStore.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 495px">
    <form id="form1" runat="server">
        <div>
            The Chiarelli Pizzeria<br />
            <br />
            <asp:RadioButton ID="RdoBaby" runat="server" Text="Baby $10" />
            <br />
            <asp:RadioButton ID="RdoMama" runat="server" Text="Mama $13" />
            <br />
            <asp:RadioButton ID="RdoPapa" runat="server" Text="Papa $16" />
            <br />
            <br />
            <asp:RadioButton ID="RdoThinCrust" runat="server" Text="Thin Crust" />
            <br />
            <asp:RadioButton ID="RdoDeepDish" runat="server" Text="Deep Dish (+$2.00)" />
            <br />
            <br />
            <asp:CheckBox ID="ChkPepperoni" runat="server" Text="Pepperoni $1.50" />
            <br />
            <asp:CheckBox ID="ChkOnions" runat="server" Text="Onions $.75" />
            <br />
            <asp:CheckBox ID="ChkGreenPeppers" runat="server" Text="Green Peppers $.50" />
            <br />
            <asp:CheckBox ID="ChkRedPeppers" runat="server" Text="Red Peppers $.75" />
            <br />
            <asp:CheckBox ID="ChkAnchovies" runat="server" Text="Anchovies $2.00" />
            <br />
            <br />
            Special Deal: Save 2.00 when you add pepperoni, green peppers and anchovies OR <br />
            pepperoni, red peppers and onions to your pizza<br />
            <br />
            <asp:Button ID="BtnPurchase" runat="server" Text="Purchase" />
            <br />
            <br />
            Total:
            <asp:Label ID="LblTotal" runat="server"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
