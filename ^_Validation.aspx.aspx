<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="^_Validation.aspx.aspx.cs" Inherits="WebApplication_A.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
          <asp:Label ID="lblFName" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
        <asp:Label ID="msgFName" runat="server" ForeColor="Red"></asp:Label>

        <br />

        <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
        <asp:DropDownList ID="ddlCountries" runat="server">
            <asp:ListItem Text="Select Country" Value=""></asp:ListItem>
            <asp:ListItem Text="India" Value="IN"></asp:ListItem>
            <asp:ListItem Text="USA" Value="US"></asp:ListItem>
            <asp:ListItem Text="Australia" Value="AU"></asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="msgCountry" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />

        <asp:Button ID="btnRegister" runat="server" Text="Register Now" OnClick="btnRegister_Click" />
   
    </form>
</body>
</html>
