<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUserAuthorityWeb.aspx.cs" Inherits="Web.AdminUserAuthorityWeb" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="StyleSheet.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 871px;
        }
        .auto-style2 {
            width: 870px;
        }
        .auto-style3 {
            width: 868px;
        }
        .auto-style4 {
            width: 656px;
        }
        .auto-style5 {
            width: 1523px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table style="width: 100%;" class="table">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="User Id:"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbx_UserId" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Authority Id:"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbx_AuthorityId" runat="server"></asp:TextBox></td>
                    <td><asp:Button ID="btn_Add" runat="server" Text="Add" OnClick="btn_Add_Click" /></td>
                </tr>
                 
            </table>

            <table style="width: 100%;" class="table1">
                 
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Id:"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbx_UpdatedId" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Authority Id:"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbx_UpdatedAuthorityId" runat="server"></asp:TextBox></td>
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

            <table style="width: 100%;" class="table2">
                <tr>
                    <td class="auto-style1">
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
