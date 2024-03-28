<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_AreaOfCircle.aspx.cs" Inherits="WebApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Area Of Circle</title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 50%;">

            <tr>
                <td>Radius :</td>
                <td><asp:TextBox ID="TextRadius" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>&pi; :</td>
                <td><asp:TextBox ID="TextPi" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>&nbsp;</td>
                <td><asp:Button ID="BtnArea" OnClick="BtnArea_Click" runat="server" Text="Area" Width="158px" /></td>
            </tr>

            <tr>
                <td>Area Of Circle is : </td>
                <td><asp:TextBox ID="TextAreaOfCircle" runat="server"></asp:TextBox></td>
            </tr>

        </table>

    </form>
</body>
</html>
