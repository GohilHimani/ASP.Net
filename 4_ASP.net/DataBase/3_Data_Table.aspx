<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="013_Data_Table.aspx.cs" Inherits="WebApplication1.DataTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DataTable</title>
</head>
<body bgcolor="#D5F5E3">
    <form id="form1" runat="server">

        <asp:DropDownList Id="DDl1" runat="server"></asp:DropDownList>
     
        <br />
        
        <asp:Button ID="Btn1" runat="server" Text="Lode Records" onclick="Btn1_Click"/>

    </form>
</body>
</html>
