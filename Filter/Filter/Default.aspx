﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Filter.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Filtering Data Demo<br />
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem Value="1">Daniel</asp:ListItem>
                <asp:ListItem Value="2">Davis</asp:ListItem>
                <asp:ListItem Value="3">Kevin</asp:ListItem>
                <asp:ListItem Value="4">Reggie</asp:ListItem>
                <asp:ListItem Value="5">Thaddeus</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:TextBox ID="TxtDate" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDNumber,JournalDate" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="IDNumber" HeaderText="IDNumber" ReadOnly="True" SortExpression="IDNumber" />
                    <asp:BoundField DataField="JournalDate" HeaderText="JournalDate" ReadOnly="True" SortExpression="JournalDate" />
                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [ArtistJournal] WHERE (([IDNumber] = ?) AND ([JournalDate] &gt;= ?)) ORDER BY [Remarks] DESC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="RadioButtonList1" Name="IDNumber" PropertyName="SelectedValue" Type="Int16" />
                    <asp:ControlParameter ControlID="TxtDate" Name="JournalDate" PropertyName="Text" Type="DateTime" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
