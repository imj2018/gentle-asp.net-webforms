<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeatherHistory.aspx.cs" Inherits="MyWeatherSite.WeatherHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Weather History<br />
            <br />
            <a href="WeatherHistory.aspx">History</a><br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                    <asp:BoundField DataField="ReportDate" DataFormatString="{0:d}" HeaderText="ReportDate" HtmlEncode="False" SortExpression="ReportDate" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    <asp:BoundField DataField="HighTemp" HeaderText="HighTemp" SortExpression="HighTemp" />
                    <asp:BoundField DataField="LowTemp" HeaderText="LowTemp" SortExpression="LowTemp" />
                    <asp:BoundField DataField="Rainfall" HeaderText="Rainfall" SortExpression="Rainfall" />
                    <asp:BoundField DataField="Snowfall" HeaderText="Snowfall" SortExpression="Snowfall" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WeaterHistoryConnectionString1 %>" DeleteCommand="DELETE FROM [History] WHERE [ID] = @ID" InsertCommand="INSERT INTO [History] ([ReportDate], [Location], [HighTemp], [LowTemp], [Rainfall], [Snowfall], [Description]) VALUES (@ReportDate, @Location, @HighTemp, @LowTemp, @Rainfall, @Snowfall, @Description)" ProviderName="<%$ ConnectionStrings:WeaterHistoryConnectionString1.ProviderName %>" SelectCommand="SELECT [ID], [ReportDate], [Location], [HighTemp], [LowTemp], [Rainfall], [Snowfall], [Description] FROM [History]" UpdateCommand="UPDATE [History] SET [ReportDate] = @ReportDate, [Location] = @Location, [HighTemp] = @HighTemp, [LowTemp] = @LowTemp, [Rainfall] = @Rainfall, [Snowfall] = @Snowfall, [Description] = @Description WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ReportDate" Type="DateTime" />
                    <asp:Parameter Name="Location" Type="String" />
                    <asp:Parameter Name="HighTemp" Type="Double" />
                    <asp:Parameter Name="LowTemp" Type="Double" />
                    <asp:Parameter Name="Rainfall" Type="Double" />
                    <asp:Parameter Name="Snowfall" Type="Double" />
                    <asp:Parameter Name="Description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ReportDate" Type="DateTime" />
                    <asp:Parameter Name="Location" Type="String" />
                    <asp:Parameter Name="HighTemp" Type="Double" />
                    <asp:Parameter Name="LowTemp" Type="Double" />
                    <asp:Parameter Name="Rainfall" Type="Double" />
                    <asp:Parameter Name="Snowfall" Type="Double" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="ReportDate" HeaderText="ReportDate" SortExpression="ReportDate" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    <asp:BoundField DataField="HighTemp" HeaderText="HighTemp" SortExpression="HighTemp" />
                    <asp:BoundField DataField="LowTemp" HeaderText="LowTemp" SortExpression="LowTemp" />
                    <asp:BoundField DataField="Rainfall" HeaderText="Rainfall" SortExpression="Rainfall" />
                    <asp:BoundField DataField="Snowfall" HeaderText="Snowfall" SortExpression="Snowfall" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:CommandField ShowCancelButton="False" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
