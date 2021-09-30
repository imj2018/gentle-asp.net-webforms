<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Journals.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Artists Journal Search Page<br />
            <br />
            <br />
            Start Date:<br />
            <asp:TextBox ID="TxtStart" runat="server"></asp:TextBox>
            <br />
            <br />
            End Date:<br />
            <asp:TextBox ID="TxtEnd" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br />
            <asp:Button ID="BtnClear" runat="server" OnClick="BtnClear_Click" Text="Clear" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDNumber,JournalDate" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="IDNumber" HeaderText="IDNumber" ReadOnly="True" SortExpression="IDNumber" />
                    <asp:BoundField DataField="JournalDate" HeaderText="JournalDate" ReadOnly="True" SortExpression="JournalDate" />
                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [ArtistJournal] WHERE (([JournalDate] &gt;= ?) AND ([JournalDate] &lt;= ?))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TxtStart" Name="JournalDate" PropertyName="Text" Type="DateTime" />
                    <asp:ControlParameter ControlID="TxtEnd" Name="JournalDate2" PropertyName="Text" Type="DateTime" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
