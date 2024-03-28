
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GeraterNumber</title>
</head>
<body>
    <form id="form1" runat="server">
            
<table style="width: 50%;">
    <tr>
        <td>Number 1 :</td>
        <td><asp:TextBox Id="TextNum1" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>Number 2 :</td>
        <td><asp:TextBox Id="TextNum2" runat="server"></asp:TextBox></td>
    </tr>
    <tr>

        <td>Number 3 :</td>
        <td><asp:TextBox Id="TextNum3" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><asp:Button Id="TextBtn" OnClick="TextBtn_Click" runat="server" Text="Greater Number" Width="157px" /></td>
    </tr>
    <tr>
        <td>Gerater Number : </td>
        <td><asp:TextBox Id="TextGeraterNum" runat="server"></asp:TextBox></td>
    </tr>

</table>

    </form>
</body>
</html>
