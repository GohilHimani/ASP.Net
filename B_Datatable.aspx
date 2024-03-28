<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="B_Datatable.aspx.cs" Inherits="WebApplication_A._8_Datatable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 <asp:DropDownList ID="ddlDepartments" runat="server">

        </asp:DropDownList>

        <br />

        <asp:Button ID="btnLoad" runat="server" Text="Load Records" OnClick="btnLoad_Click"/>
     </form>
</body>
</html>
