<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_Valdation.aspx.cs" Inherits="WebApplication.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Valdation</title>
</head>
<body>
    
    <form id="form1" runat="server">

        <asp:Label ID="LblFname" runat="server" Text="First Name  "></asp:Label>
        <asp:TextBox ID="TextFname" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Label ID="MsgFname" runat="server" ForeColor="Indigo"></asp:Label>
        
         <br />
         <br />

        <asp:Label ID="LblCountry" runat="server" Text="Country  "></asp:Label>

        <asp:DropDownList ID="DDL1" runat="server">

            <asp:ListItem Text="Select Country" Vlaue=""></asp:ListItem>
            <asp:ListItem Text="India" Vlaue="1"></asp:ListItem>
            <asp:ListItem Text="China" Vlaue="2"></asp:ListItem>
            <asp:ListItem Text="Canada" Vlaue="3"></asp:ListItem>
            <asp:ListItem Text="Uk" Vlaue="4"></asp:ListItem>
            <asp:ListItem Text="France" Vlaue="5"></asp:ListItem>
            <asp:ListItem Text="Brazill" Vlaue="6"></asp:ListItem>

        </asp:DropDownList>
        
        <br />
        <br />

        <asp:Label ID="MsgCountry" runat="server" ></asp:Label>

        <br />
        <br />
    
        <asp:Button ID="BtnRegister" runat="server" Onclick="BtnRegister_Click" Text=" Register Now " />
        
        <br />
        <br />
    
        <asp:CheckBox Id="ChkAgree" runat="server" Text="You Are Not Robot "></asp:CheckBox>
    
        <br />
        <br />
    
        <asp:Label ID="MsgAgree" runat="server" ForeColor="Indigo"></asp:Label>

    </form>
</body>
</html>
