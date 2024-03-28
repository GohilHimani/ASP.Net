<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormNev.aspx.cs" Inherits="WebApplication1.WebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Form </title>
    <style type="text/css">
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
<body bgcolor="#F8BCCC" text="#4A148C">
    <form id="form1" runat="server">
        
        
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
        <tr>
            <td class="auto-style3">DeptNo </td>
            <td class="auto-style4"><asp:TextBox ID="txtDeptNo" runat="server" Width="236px"></asp:TextBox></td>
        </tr>


        <tr rowspan="10">
            <td></td>
            <td class="auto-style4">
                <br />

                <strong><em>
                <asp:Button ID="BtnFirst" runat="server" Text="First" CssClass="auto-style1" Width="65px" OnClick="BtnFirst_Click" />
                <asp:Button ID="BtnPrevious" runat="server" Text="Previous" CssClass="auto-style1" Width="65px" OnClick="BtnPrevious_Click" />
                    <asp:Button ID="BtnNext" runat="server" Text="Next" CssClass="auto-style1" Width="65px" OnClick="BtnNext_Click"/>                
                <asp:Button ID="BtnLast" runat="server" Text="Last" CssClass="auto-style1" Width="65px" OnClick="BtnLast_Click" />
                </em></strong>
            </td>
        </tr>
    </table>

    </form>

</body>
</html>
