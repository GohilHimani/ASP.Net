<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="_DropDown.aspx.cs" Inherits="WebApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DropDownList</title>
</head>
<body>
    <form id="form1" runat="server">
        
        Codeing Language :

        <asp:DropDownList ID="DD1" runat="server">
            <asp:ListItem Text="Select Language"></asp:ListItem> 
            <asp:ListItem Text="C Language"></asp:ListItem> 
            <asp:ListItem Text="C++"></asp:ListItem> 
            <asp:ListItem Text="Css" ></asp:ListItem> 
            <asp:ListItem Text="C#"></asp:ListItem> 
            <asp:ListItem Text="SQL"></asp:ListItem> 
            <asp:ListItem Text="Python"></asp:ListItem> 
        </asp:DropDownList>
        
        <br />
        <br />

        Conuntries :

            <asp:DropDownList ID="DDl2" runat="server">
                <asp:ListItem Text="Select Conuntries" Vlaue=""></asp:ListItem> 
                <asp:ListItem Text="Usa" Vlaue="Us" ></asp:ListItem> 
                <asp:ListItem Text="Canada" Vlaue="Ca" ></asp:ListItem> 
                <asp:ListItem Text="India" Vlaue="In" ></asp:ListItem> 
                <asp:ListItem Text="Brazil" Vlaue="Br" ></asp:ListItem> 
                <asp:ListItem Text="France" Vlaue="Fr" ></asp:ListItem> 
                <asp:ListItem Text="Greece" Vlaue="Gr" ></asp:ListItem> 
            </asp:DropDownList>

        <br />
        <br />

        Country Without Value Onload :

            <asp:DropDownList ID="DDL3" runat="server"></asp:DropDownList>
        
        <br />
        <br />

        Country With Value Onload :
        
            <asp:DropDownList ID="DDL4" runat="server"></asp:DropDownList>


    </form>
</body>
</html>
