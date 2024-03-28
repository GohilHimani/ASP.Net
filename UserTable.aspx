<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserTable.aspx.cs" Inherits="WebApplication1.UserTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User_Table</title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 90px;
        }
    </style>
</head>
<body bgcolor="#E8DAEF" text="#5B2C6F">
    <form id="form1" runat="server">

        <table>
            <tr>
                <td>User Id  </td>
                <td><asp:TextBox ID="TextUId" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>User Name  </td>
                <td><asp:TextBox ID="TextUName" runat="server" Width="200px" OnTextChanged="TextUName_TextChanged"></asp:TextBox></td>
            </tr>
            <tr>
                <td>PassWords </td>
                <td><asp:TextBox ID="TextPaw" runat="server" TextMode="Password" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td  class="auto-style1" ><asp:Button ID="Button1" runat="server" Text="Register" Width="101px" OnClick="Button1_Click"/></td>
            </tr>

        </table>    
    </form>
</body>
</html>
