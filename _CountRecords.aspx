<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="WebApplication_A.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CountRecords</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Button ID="BtnCount" runat="server" Text="Count Record" OnClick="BtnCount_Click" />

        <br />
        <br />

        <asp:Label ID="LB1" runat="server"></asp:Label>
        
    </form>
</body>
</html>
