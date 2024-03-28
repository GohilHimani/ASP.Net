<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Form</title>
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
        
        
        <asp:DropDownList ID="DDL1" runat="server" Width="140px" Height="22px" >
            <asp:ListItem Value="" Text="Select Item"></asp:ListItem>
            <asp:ListItem Value="101" Text="Rohan"></asp:ListItem>
        </asp:DropDownList>
        <span id="spnDdl" style="color:red;" runat="server"></span>
        <br />
        <br />

        <table class="auto-style2">
                
                <tr>
                    <td class="auto-style3">Id </td>
                    <td class="auto-style4"><asp:TextBox ID="txtId" runat="server" Width="236px"></asp:TextBox>
                        <span id="spnID" style="color:red;" runat="server"></span>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style3">Name </td>
                    <td class="auto-style4"><asp:TextBox ID="txtName" runat="server" Width="236px"></asp:TextBox>
                        <span id="spnName" style="color:red;" runat="server"></span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Salary </td>
                    <td class="auto-style4"><asp:TextBox ID="txtSalary" runat="server" Width="236px"></asp:TextBox>
                        <span id="spnSalary" style="color:red;" runat="server"></span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">HireDate </td>
                    <td class="auto-style4"><asp:TextBox ID="txtHireDate" runat="server" Width="236px"></asp:TextBox>
                        <span id="spnHireDate" style="color:red;" runat="server"></span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"><asp:Button ID="btnSave" Text="Save" OnClick="btnSave_Click" runat="server" /></td>
                </tr>
        </table>
    </form>
</body> 
</html>
