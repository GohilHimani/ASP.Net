<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_Sawpping.aspx.cs" Inherits="WebApplication.Sawpping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 51%;
            height: 178px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <table class="auto-style1">
            <tr>
                <td>Number 1 :</td>
                <td><asp:TextBox ID="Num1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Number 2 :</td>
                <td><asp:TextBox ID="Num2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="BtnSawp" Onclick="BtnSawp_Click" runat="server" Text="Sawpping" Width="159px" /></td>
            </tr>
            <tr>
                <td>Sawpping Number 1 :</td>
                <td><asp:TextBox ID="SawpNum1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Sawpping Number 2 :</td>
                <td><asp:TextBox ID="SawpNum2" runat="server"></asp:TextBox></td>
            </tr>

        </table>

    </form>
</body>
</html>
