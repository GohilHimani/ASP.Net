<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_Poputate_Dropdown.aspx.cs" Inherits="WebApplication_A._Poputate_Dropdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Poputate_Dropdown</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:DropDownList ID="DDL1" runat="server"></asp:DropDownList>
        <br />
        <asp:Button ID="BTN1" runat="server" Text="Load_Departments" OnClick="BtnLoadRecord_Click" />
        <br />
    </form>
</body>
</html>
