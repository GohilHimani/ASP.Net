<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Done_LogIn.aspx.cs" Inherits="WebApplication1.Done_LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 50px;
            background-color: #9966FF;
        }
    </style>
</head>
<body bgcolor="#ABCCCF">
    <form id="form1" runat="server">
        <asp:Image ID="Image" runat="server" ImageUrl="Pic/LogInPic.jpg"  />
        <br />
        <br />
                    <asp:Button ID="Button1" runat="server" Text="Log Out" Width="171px" OnClick="Button1_Click" CssClass="auto-style1" />
    </form>
</body>
</html>
