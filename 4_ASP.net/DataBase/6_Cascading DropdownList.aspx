<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_Cascading DropdownList.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cascading DropdownList</title>
   
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 50%;">  
            <tr>  
                <td>  
                   Choose Your Country :
                </td>  
                <td>  
                    <asp:DropDownList ID="DDL1" runat="server" AutoPostBack="True"   
                        DataTextField="CName" DataValueField="CId" AppendDataBoundItems="true"   
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width ="180px">  
                        <asp:ListItem Value="0">--Select Country--</asp:ListItem>  
                    </asp:DropDownList>  
                </td>  
                 
            </tr>  

            <tr>  
                <td>  
                    Choose Your State :
                </td>  
                <td>  
                    <asp:DropDownList ID="DDL2" runat="server" AppendDataBoundItems="true" DataTextField="SName"   
                        DataValueField="SId" AutoPostBack="True"   
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="180px">  
                        <asp:ListItem Value="0">-- Select State--</asp:ListItem>  
                    </asp:DropDownList>  
                </td>  
               
            </tr>  
            <tr>  
                <td>  
                    Choose Your City :
                </td>  
                <td>  
                    <asp:DropDownList ID="DDL3" runat="server" AppendDataBoundItems="true" DataTextField="CName"   
                        DataValueField="CId" Width="180px">  
                        <asp:ListItem Value="0">-- Select City--</asp:ListItem>  
                    </asp:DropDownList>  
                </td>  
            </tr>  
        </table>  
    </form>
</body>
</html>
