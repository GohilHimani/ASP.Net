<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_Images.aspx.cs" Inherits="WebApplication.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Images</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Image1.jpg" Width="400px" Height="400px" />

        <br />
        <br />
        
        <asp:Image ID="Image2" runat="server" />

        <br />
        <br />
        
        <asp:DropDownList ID="DDL1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDL1_SelectedIndexChanged">
            <asp:ListItem Text="Image 1" Value="~/Images/Image1.jpg"></asp:ListItem>
            <asp:ListItem Text="Image 2" Value="~/Images/Image2.jpg"></asp:ListItem>
            <asp:ListItem Text="Image 3" Value="~/Images/Image3.jpg"></asp:ListItem>
            <asp:ListItem Text="Image 4" Value="~/Images/Image4.jpg"></asp:ListItem>
            <asp:ListItem Text="Image 5" Value="~/Images/Image5.jpg"></asp:ListItem>
            <asp:ListItem Text="Image 6" Value="~/Images/Image6.jpg"></asp:ListItem>
        </asp:DropDownList>

        <br />
        <br />

        <asp:Image ID="ImageShow" runat="server" Width="400px"  Height="400px"/>

    </form>
</body>
</html>
