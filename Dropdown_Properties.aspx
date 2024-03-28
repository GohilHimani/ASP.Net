<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dropdown_Properties.aspx.cs" Inherits="WebApplication.Dropdown_Properties" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dropdown_propertles</title>
</head>
<body>
    <form id="form1" runat="server">
        Countries :

        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="Select Country" Value="In"></asp:ListItem>
            <asp:ListItem Text="Canada" Value="In"></asp:ListItem>
            <asp:ListItem Text="Japan" Value="In"></asp:ListItem>
            <asp:ListItem Text="India" Value="In"></asp:ListItem>
            <asp:ListItem Text="Germany" Value="In"></asp:ListItem>
            <asp:ListItem Text="France" Value="In"></asp:ListItem>
        </asp:DropDownList>

        <br />
        <br />

        <asp:Button Id="BtnTotal" Text="Find Total" Onclick="" runat="server" />
        <asp:Button Id="BtnGetSelected" Text="Get Selected Item" Onclick="BtngetSelected_Click" runat="server" />
        <asp:Button Id="BtnGetSelectedIndex" Text="Btn GetSelected Index" Onclick="BtnGetSelectedIndex_Click" runat="server" />
        <asp:Button Id="BtnRemoveSelected" Text="BtnRemoveByIndex" Onclick="BtnRemoveSelected_Click" runat="server" />
        <asp:Button Id="BtnRemoveAll" Text="Btn GetSelected Index" Onclick="BtnRemoveAll_Click" runat="server" />
        
        <br />

        Add Index : 
        <asp:TextBox ID="TextIndex" runat="server"></asp:TextBox>
        <asp:Button Id="BtnRemoveByIndex" Text="Remove By Index" Onclick="BtnRemoveByIndex_Click" runat="server" />
    
    </form>
</body>
</html>
