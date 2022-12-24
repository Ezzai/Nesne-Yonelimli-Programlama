<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminOrderWeb.aspx.cs" Inherits="Web.AdminOrderWeb" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="StyleSheet.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 333px;
        }
        .auto-style4 {
            width: 1011px;
        }
        .auto-style5 {
            width: 1343px;
        }
        .auto-style7 {
            width: 332px;
        }
        .auto-style8 {
            width: 1013px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table style="width: 100%;" class="table5">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="User Id:"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbx_UserId" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="Coffee Id:"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbx_CoffeeId" runat="server"></asp:TextBox></td>
                    <td><asp:Button ID="btn_Add" runat="server" Text="Add" OnClick="btn_Add_Click"/></td>
                </tr>
                 
            </table>

            <table style="width: 100%;" class="table3">
                 
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Id:"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbx_UpdatedId" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Coffee Id:"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbx_UpdatedCoffeeId" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="User Id:"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbx_UpdatedUserId" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="btn_Update" runat="server" Text="Update" OnClick="btn_Update_Click" /></td>
                </tr>
                 
            </table>

            <table style="width: 100%;" class="table1">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label10" runat="server" Text="Id:"></asp:Label></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="tbx_DeletedId" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="btn_Delete" runat="server" Text="Delete" OnClick="btn_Delete_Click" /></td>
                </tr>
            </table>

             <table style="width: 100%;">
                <tr>
                    <td class="auto-style5" >
                        <asp:ListBox ID="ListBox1" Width ="89%" runat="server"></asp:ListBox></td>
                   
                    <td>
                        <asp:Button ID="btn_List" runat="server" Text="List" OnClick="btn_List_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
