<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_ListBox_Items.aspx.cs" Inherits="WebApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ListBox_Items</title>
</head>
<body bgcolor="Indigo">
    <form id="form1" runat="server">

        <asp:TextBox ID="TB1" runat="server" Width="290px"></asp:TextBox>

        <asp:Button ID="BtnAdd" OnClick="BtnAdd_Click" runat="server" Text=" Add " style="margin-left: 18px" />

        <br />
        <br />

        <asp:Button ID="Btn1" OnClick="Btn1_Click" runat="server" Text="YouWanrTOSelectedItems" Width="296px" />

        <br />
        <br />

        <asp:Button ID="Btn2" OnClick="Btn2_Click" runat="server" Text="YouWantToCountItems" Width="296px" />
    
        <br />
        <br />

        <asp:ListBox ID="LB1" runat="server" Height="300px" Width="296px" SelectionMode="Multiple">
            <asp:ListItem Text="C Language" Vlaue="C"></asp:ListItem>
            <asp:ListItem Text="Java" Vlaue="Java"></asp:ListItem>
            <asp:ListItem Text="C++" Vlaue="Cpp"></asp:ListItem>
            <asp:ListItem Text="C#" Vlaue="Cs"></asp:ListItem>
            <asp:ListItem Text="Java" Vlaue="Java"></asp:ListItem>
            <asp:ListItem Text="Pyton" Vlaue="py"></asp:ListItem>
            <asp:ListItem Text="Sql" Vlaue="sql"></asp:ListItem>
            <asp:ListItem Text="Java" Vlaue="Java"></asp:ListItem>
            <asp:ListItem Text="Vb.net" Vlaue="vb"></asp:ListItem>
            <asp:ListItem Text="Java" Vlaue="Java"></asp:ListItem>
        </asp:ListBox>
        
        <br />
        <br />

        <sapn id="SapnMsg" runat="Server" Style="color:#b200ff ;font-weight:bold;"></sapn>

        <br />
        <br />

        <asp:Button ID="Btn3" Onclick="Btn3_Click" runat="server" Text="DeleteUnSeletedItems" Width="296px" />

    </form>
</body>
</html>
