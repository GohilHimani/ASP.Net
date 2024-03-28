<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_Dropdown_Transfer.aspx.cs" Inherits="WebApplication.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dropdown_Transfer</title>
</head>
<body>
    <form runat="server">

        <asp:ListBox ID="lstSource" SelectionMode="Multiple"  runat="server" Height="120px" Width="100px"></asp:ListBox>
        
        <asp:Button ID="btnFirst" runat="server" Text="|<<" OnClick="btnFirst_Click" />
        <asp:Button ID="btnPrevious" runat="server" Text="<<" OnClick="btnPrevious_Click" />
        <asp:Button ID="btnNext" runat="server" Text=">>" OnClick="btnNext_Click" />
        <asp:Button ID="btnLast" runat="server" Text=">>|" OnClick="btnLast_Click" />

        <asp:ListBox ID="lstDestination" SelectionMode="Multiple"  runat="server" Height="120px" Width="100px"></asp:ListBox>

    </form>
</body>
</html>
