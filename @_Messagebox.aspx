<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="@_Messagebox.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Message</title>
    <script>
        function alertMessage()
        {
            alert("Welcome to C#");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="BtnDispaly1" runat="server" Text="DisplayMessage" OnClientClick="alertMessage()"/>
        <br />
        <br />
        <asp:Button ID="BtnInput1" runat="server" Text="InputAndOutPut" Onclick="BtnInput1_Click" />

    </form>
</body>
</html>
