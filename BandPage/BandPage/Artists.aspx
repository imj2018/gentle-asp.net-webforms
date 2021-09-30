<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Artists.aspx.cs" Inherits="BandPage.Artists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FF9900" DataKeyNames="IDNumber" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="IDNumber" HeaderText="IDNumber" InsertVisible="False" ReadOnly="True" SortExpression="IDNumber" />
                    <asp:BoundField DataField="SignonlID" HeaderText="SignonlID" SortExpression="SignonlID" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                    <asp:BoundField DataField="Bio" HeaderText="Bio" SortExpression="Bio" />
                    <asp:BoundField DataField="Instruments" HeaderText="Instruments" SortExpression="Instruments" />
                    <asp:BoundField DataField="FavFood" HeaderText="FavFood" SortExpression="FavFood" />
                    <asp:BoundField DataField="HomeTown" HeaderText="HomeTown" SortExpression="HomeTown" />
                    <asp:BoundField DataField="NickName" HeaderText="NickName" SortExpression="NickName" />
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                </Columns>
                <HeaderStyle BackColor="Yellow" BorderColor="#0000CC" BorderStyle="Solid" BorderWidth="4px" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Artists]"></asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
