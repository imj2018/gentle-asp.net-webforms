<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tours.aspx.cs" Inherits="BandPage.Tours" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TourNumber,ShowDate" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="TourNumber" HeaderText="TourNumber" ReadOnly="True" SortExpression="TourNumber" />
                    <asp:BoundField DataField="ShowDate" HeaderText="ShowDate" ReadOnly="True" SortExpression="ShowDate" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
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
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="App_Data\BandDatabase.mdb" DeleteCommand="DELETE FROM `Tours` WHERE `TourNumber` = ? AND `ShowDate` = ?" InsertCommand="INSERT INTO `Tours` (`TourNumber`, `ShowDate`, `City`, `State`, `ZipCode`, `VenueName`, `TicketLink`, `Cost`, `Time`, `Notes`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT `TourNumber`, `ShowDate`, `City`, `State`, `ZipCode`, `VenueName`, `TicketLink`, `Cost`, `Time`, `Notes` FROM `Tours`" UpdateCommand="UPDATE `Tours` SET `City` = ?, `State` = ?, `ZipCode` = ?, `VenueName` = ?, `TicketLink` = ?, `Cost` = ?, `Time` = ?, `Notes` = ? WHERE `TourNumber` = ? AND `ShowDate` = ?">
                <DeleteParameters>
                    <asp:Parameter Name="TourNumber" Type="Int16" />
                    <asp:Parameter Name="ShowDate" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TourNumber" Type="Int16" />
                    <asp:Parameter Name="ShowDate" Type="DateTime" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="VenueName" Type="String" />
                    <asp:Parameter Name="TicketLink" Type="String" />
                    <asp:Parameter Name="Cost" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="VenueName" Type="String" />
                    <asp:Parameter Name="TicketLink" Type="String" />
                    <asp:Parameter Name="Cost" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                    <asp:Parameter Name="TourNumber" Type="Int16" />
                    <asp:Parameter Name="ShowDate" Type="DateTime" />
                </UpdateParameters>
            </asp:AccessDataSource>
        </div>
    </form>
</body>
</html>
