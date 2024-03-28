<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_Form.aspx.cs" Inherits="WebApplication1.Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lode_Recode_From</title>
    <style type="text/css">
        .auto-style1 {
            width: 122px;
        }
        .auto-style2 {
            height: 100px;
        }
    </style>
    
</head>
<body>
    <form id="Form" runat="server">

            <table>
                <tr class="auto-style1">
                    <td class="auto-style1"><asp:DropDownList ID="DDL1" runat="server" OnSelectedIndexChanged="DDL1_SelectedIndexChanged" AutoPostBack="true" Width="159px"></asp:DropDownList></td>
                    <td><asp:Button ID="BTN1" runat="server" Text=" LodeData " OnClick="Btn1_Click" Width="116px"/></td>
                </tr>
            </table>

            <br /><br /><br /><br /><br /><br /><hr /><br />
            
            <table>
                <tr>
                    <td class="auto-style1">Id : </td>
                    <td><asp:TextBox ID="TextId" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style1">Name : </td>
                    <td><asp:TextBox ID="TextName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Salary : </td>
                    <td><asp:TextBox ID="TextSalary" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">HairDate : </td>
                    <td><asp:TextBox ID="TextHireDate" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>DeptId : </td>
                    <td><asp:TextBox ID="TextDeptId" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td colspan="2" class="auto-style2">
                        <asp:Button ID="BtnInsert" runat="server" Text="Insert" Width="88px" OnClick="BtnInsert_Click" />
                        <asp:Button ID="BtnUpdate" runat="server" Text="Update" Width="88px" OnClick="BtnUpdate_Click" />
                        <asp:Button ID="BtnDelete" runat="server" Text="Delete " Width="88px" OnClick="BtnDelete_Click" />
                        <asp:Button ID="BtnCancel" runat="server" Text="Cancel" Width="88px" OnClick="BtnCancel_Click" />
                    </td>
                 </tr>

            </table>

        <br /><hr />

    </form>
</body>
</html>
