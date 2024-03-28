<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintDataInPage.aspx.cs" Inherits="WebApplication1.PrintDataInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PrintData</title>
</head>
<body bgcolor="#E8DAEF" >
    <form id="form1" runat="server">

        <asp:Button ID="BTN1" runat="server" Text="Count Record" Onclick="BTN1_Click" />
        

        <br />
        <br />
        
        <asp:Label ID="LB1" runat="server" ForeColor="Indigo"></asp:Label>

    </form>
</body>
</html>
