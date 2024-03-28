<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_Dropdown_Properties.aspx.cs" Inherits="WebApplication._Dropdown_Properties" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DropDownList Properties</title>
</head>
<body>
    <form id="form1" runat="server">
       
        Language :

        <asp:DropDownList ID="DDL1" runat="server">
            <asp:ListItem Text="Select Language"></asp:ListItem>
            <asp:ListItem Text="C Language" Vlaue="C"></asp:ListItem>
            <asp:ListItem Text="C++" Vlaue="Cpp"></asp:ListItem>
            <asp:ListItem Text="Css" Vlaue="Css"></asp:ListItem>
            <asp:ListItem Text="Pytone" Vlaue="Py"></asp:ListItem>
            <asp:ListItem Text="Java" Vlaue="Java"></asp:ListItem>
        </asp:DropDownList>
        
        <br />
        <br />

            <span id="SapnMsg" runat="Server" style="color:blueviolet;font-weight:bold;"></span>

        <br />
        <br />
        
            <asp:Button ID="BtnTotal" Text="Find Total" OnClick="BtnTotal_Click" runat="server"  />
            <asp:Button ID="BtnGetSelected" Text="Get Selected Item" Onclick="BtnGetSelected_Click" runat="server"  />
            <asp:Button ID="BtnGetSelectedIndex" Text="Get Selected Index" Onclick="BtnGetSelectedIndex_Click" runat="server" />
            <asp:Button ID="BtnRemoveSelected" Text="Remove Selected" Onclick="BtnRemoveSelected_Click" runat="server" />
            <asp:Button ID="BtnRemoveAll" Text="Remove All" Onclick="BtnRemoveAll_Click" runat="server" />

        <br />
        <br />


        Add Index :

        <asp:TextBox Id="TextIndex" runat="server"></asp:TextBox>
        
        <br />
        <br />

        <asp:Button ID="BtnRemoveByIndex" Text="Remove BY Index" Onclick="BtnRemoveByIndex_Click" runat="server" />
        
    </form>
</body>
</html>
