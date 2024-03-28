<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Untitled_Page.aspx.cs" Inherits="WebApplication1.Form_Nev2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>From_Nev</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
            background-color: #CCCCFF;
        }
        .auto-style2 {
            background-color: #CCCCFF;
        }
        .auto-style1 {
            margin-left: 14px;
            font-weight: bold;
            background-color: #9999FF;
        }
        .auto-style2 {
            width: 50%;
            font-size: large;
            height: 193px;
        }
        .auto-style3 {
            width: 400px;
        }
        .auto-style4 {
            width: 417px;
        }
    </style>
</head>
<body bgcolor="#D1F2EB" text="#4A148C">
    <form id="form1" runat="server">
        
        <asp:GridView ID="GridView1" OnPageIndexChanging="GridView1_PageIndexChanging"  
            AllowPaging="true"
            PageSize="3"
            runat="server"></asp:GridView>
        <br />
        <asp:DropDownList ID="DDL1" runat="server" Width="140px" Height="22px" OnSelectedIndexChanged="DDL1_SelectedIndexChanged1" ></asp:DropDownList>
        
        <br />
        <br />

        <table class="auto-style2">
                
                <tr>
                    <td class="auto-style3">Id </td>
                    <td class="auto-style4"><asp:TextBox ID="txtId" runat="server" Width="236px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">Name </td>
                    <td class="auto-style4"><asp:TextBox ID="txtName" runat="server" Width="236px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">Salary </td>
                    <td class="auto-style4"><asp:TextBox ID="txtSalary" runat="server" Width="236px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">HireDate </td>
                    <td class="auto-style4"><asp:TextBox ID="txtHireDate" runat="server" Width="236px"></asp:TextBox></td>
                </tr>

        </table>
        <br /><br />

        <asp:Button ID="BtnInsert" runat="server" Text="Insert"  CssClass="auto-style1" Width="82px" OnClick="BtnInsert_Click" />
        <asp:Button ID="BtnUpdate" runat="server" Text="Update"  CssClass="auto-style1" Width="82px" OnClick="BtnUpdate_Click" />
        <asp:Button ID="BtnDelete" runat="server" Text="Delete"  CssClass="auto-style1" Width="82px" OnClick="BtnDelete_Click" />
    </form>
</body>
</html>
