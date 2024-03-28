<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="WebApplication1.Asp.net.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LoginFrom</title>
    <style type="text/css">
        .auto-style1 {
            background-color: #99FFCC;
        }
        .auto-style2 {
            background-color: #9966FF;
        }
    </style>
</head>
<body bgcolor="#ABEBC6" text="#0B5345">
    <form id="MyForm" method="post" runat="server">
    
       
        <table>
            
            <tr>
                <td>User Name  </td>
                <td><asp:TextBox ID="TextUName" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>PassWords </td>
                <td><asp:TextBox ID="TextPwd" runat="server" TextMode="Password" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style1" ><asp:Button ID="Button1" runat="server" Text="Log In" Width="101px" OnClick="Button1_Click" CssClass="auto-style2"/></td>

            </tr>
        </table>
    </form>
</body>
</html>
