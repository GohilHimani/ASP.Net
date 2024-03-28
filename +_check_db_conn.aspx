<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="+_check_db_conn.aspx.cs" Inherits="WebApplication_A.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Button ID="btnCheckDbCon" runat="server" 
            Text="Open DB Connection" OnClick="btnCheckDbCon_Click" />

        <br />

        <asp:Label ID="lblMessage" runat="server"></asp:Label>   

    </form>
</body>
</html>
