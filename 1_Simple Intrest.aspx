<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_Simple Intrest.aspx.cs" Inherits="WebApplication.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Intrest</title>
</head>
<body>
    <form id="form1" runat="server">

        <table style="width: 40%;">

            <tr>
                <td>Amount :</td>
                <td><asp:TextBox ID="TextAmount" runat="server"></asp:TextBox></td>

            </tr>

            <tr>
                <td>Rate :</td>
                <td><asp:TextBox ID="TextRate" runat="server"></asp:TextBox></td>

            </tr>
            <tr>
                <td>Number Of Year :</td>
                <td><asp:TextBox ID="TextNumOfYear" runat="server"></asp:TextBox></td>

            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="BtnClac1" Onclick="BtnClac1_Click" runat="server" Text="Clac" Width="158px"  /></td>
            </tr>

            <tr>
                <td>Simple Intrest :</td>
                <td><asp:TextBox ID="TextSI" runat="server"></asp:TextBox></td>
            </tr>

        </table>

    </form>
</body>
</html>
