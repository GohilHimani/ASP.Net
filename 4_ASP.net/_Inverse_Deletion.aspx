<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8_Inverse_Deletion.aspx.cs" Inherits="testASP._8_Inverse_Deletion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Country without Value:  
        <br />
        <asp:ListBox ID="lstItems" runat="server" SelectionMode="Multiple">
            <asp:ListItem Text="India"></asp:ListItem>
            <asp:ListItem Text="Australia"></asp:ListItem>
            <asp:ListItem Text="USA"></asp:ListItem>
            <asp:ListItem Text="UK"></asp:ListItem>
            <asp:ListItem Text="South Africa"></asp:ListItem>
            <asp:ListItem Text="West Indies"></asp:ListItem>
        </asp:ListBox>
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Inverse" />
    </form>
</body>
</html>
