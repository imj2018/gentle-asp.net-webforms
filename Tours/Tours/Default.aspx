<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tours.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Band Tour Admin<br />
            <br />
            <br />
            Tour Numbers:<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TourNumber" DataValueField="TourNumber">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [TourNumber] FROM [Tours]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TourNumber,ShowDate" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" PageSize="5">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="TourNumber" HeaderText="TourNumber" ReadOnly="True" SortExpression="TourNumber" />
                    <asp:BoundField DataField="ShowDate" DataFormatString="{0:d}" HeaderText="ShowDate" ReadOnly="True" SortExpression="ShowDate" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Tours] WHERE [TourNumber] = ? AND [ShowDate] = ? AND [City] = ? AND [State] = ? AND (([ZipCode] = ?) OR ([ZipCode] IS NULL AND ? IS NULL)) AND [VenueName] = ? AND (([TicketLink] = ?) OR ([TicketLink] IS NULL AND ? IS NULL)) AND (([Cost] = ?) OR ([Cost] IS NULL AND ? IS NULL)) AND (([Time] = ?) OR ([Time] IS NULL AND ? IS NULL)) AND (([Notes] = ?) OR ([Notes] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Tours] ([TourNumber], [ShowDate], [City], [State], [ZipCode], [VenueName], [TicketLink], [Cost], [Time], [Notes]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Tours] WHERE ([TourNumber] = ?) ORDER BY [ShowDate]" UpdateCommand="UPDATE [Tours] SET [City] = ?, [State] = ?, [ZipCode] = ?, [VenueName] = ?, [TicketLink] = ?, [Cost] = ?, [Time] = ?, [Notes] = ? WHERE [TourNumber] = ? AND [ShowDate] = ? AND [City] = ? AND [State] = ? AND (([ZipCode] = ?) OR ([ZipCode] IS NULL AND ? IS NULL)) AND [VenueName] = ? AND (([TicketLink] = ?) OR ([TicketLink] IS NULL AND ? IS NULL)) AND (([Cost] = ?) OR ([Cost] IS NULL AND ? IS NULL)) AND (([Time] = ?) OR ([Time] IS NULL AND ? IS NULL)) AND (([Notes] = ?) OR ([Notes] IS NULL AND ? IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_TourNumber" Type="Int16" />
                    <asp:Parameter Name="original_ShowDate" Type="DateTime" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_ZipCode" Type="String" />
                    <asp:Parameter Name="original_ZipCode" Type="String" />
                    <asp:Parameter Name="original_VenueName" Type="String" />
                    <asp:Parameter Name="original_TicketLink" Type="String" />
                    <asp:Parameter Name="original_TicketLink" Type="String" />
                    <asp:Parameter Name="original_Cost" Type="String" />
                    <asp:Parameter Name="original_Cost" Type="String" />
                    <asp:Parameter Name="original_Time" Type="String" />
                    <asp:Parameter Name="original_Time" Type="String" />
                    <asp:Parameter Name="original_Notes" Type="String" />
                    <asp:Parameter Name="original_Notes" Type="String" />
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
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="TourNumber" PropertyName="SelectedValue" Type="Int16" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="VenueName" Type="String" />
                    <asp:Parameter Name="TicketLink" Type="String" />
                    <asp:Parameter Name="Cost" Type="String" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                    <asp:Parameter Name="original_TourNumber" Type="Int16" />
                    <asp:Parameter Name="original_ShowDate" Type="DateTime" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_ZipCode" Type="String" />
                    <asp:Parameter Name="original_ZipCode" Type="String" />
                    <asp:Parameter Name="original_VenueName" Type="String" />
                    <asp:Parameter Name="original_TicketLink" Type="String" />
                    <asp:Parameter Name="original_TicketLink" Type="String" />
                    <asp:Parameter Name="original_Cost" Type="String" />
                    <asp:Parameter Name="original_Cost" Type="String" />
                    <asp:Parameter Name="original_Time" Type="String" />
                    <asp:Parameter Name="original_Time" Type="String" />
                    <asp:Parameter Name="original_Notes" Type="String" />
                    <asp:Parameter Name="original_Notes" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
