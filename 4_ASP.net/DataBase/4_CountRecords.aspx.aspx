<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="A_CountRecords.aspx.cs" Inherits="WebApplication_A.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          
        <asp:Button ID="btnCount" runat="server" Text="Count Record" OnClick="btnCount_Click" />

        <br />
        <br />

        <asp:Label ID="lblMsg" runat="server"></asp:Label>

    </form>
</body>
</html>
