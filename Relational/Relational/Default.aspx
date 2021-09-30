<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Relational.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="FavoriteSong" HeaderText="FavoriteSong" SortExpression="FavoriteSong" />
                    <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                    <asp:BoundField DataField="Album Name" HeaderText="Album Name" SortExpression="Album Name" />
                    <asp:BoundField DataField="AlbumNumber" HeaderText="AlbumNumber" SortExpression="AlbumNumber" />
                    <asp:BoundField DataField="TrackNumber" HeaderText="TrackNumber" SortExpression="TrackNumber" />
                    <asp:BoundField DataField="TrackName" HeaderText="TrackName" SortExpression="TrackName" Visible="False" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT Fans.Name, Fans.FavoriteSong, Fans.Comments, AlbumTracks.AlbumNumber, AlbumTracks.[Album Name], AlbumTracks.TrackNumber, AlbumTracks.TrackName FROM (Fans INNER JOIN AlbumTracks ON Fans.FavoriteSong = AlbumTracks.TrackName) ORDER BY AlbumTracks.AlbumNumber, AlbumTracks.TrackNumber"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
