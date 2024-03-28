﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Save Data</title>
</head>
<body bgcolor="#ABEBC6" text="#0B5345">
    <form id="form1" runat="server">

        <asp:DropDownList ID="DDL1" runat="server" OnSelectedIndexChanged="DDL1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>

        <asp:Button ID="Btn1" runat="server" OnClick="Btn1_Click" Text="DataLode" Style="margin-left: 9px" />

        <br />
        <br />


        <table>

            <tr>
                <td>Id : </td>
                <td>
                    <asp:TextBox ID="txtID" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Name : </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>Salary : </td>
                <td>
                    <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td>HireDate :</td>
                <td>
                    <asp:TextBox ID="txtHireDate" runat="server"></asp:TextBox></td>

            </tr>

            <tr>
                <td>DeptNo :</td>
                <td>
                    <asp:TextBox ID="txtDeptNo" runat="server"></asp:TextBox></td>
            </tr>

        </table>

        <br />
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
    </form>
</body>
</html>

