<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCategoryWeb.aspx.cs" Inherits="Web.AdminCategoryWeb" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="StyleSheet.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 306px;
        }
        .auto-style2 {
            width: 307px;
        }
        .auto-style3 {
            width: 309px;
        }
        .auto-style4 {
            width: 1345px;
        }
        .auto-style5 {
            width: 1036px;
        }
        .auto-style6 {
            width: 1031px;
        }
        .auto-style7 {
            width: 1038px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;" class="table4">
                 <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="tbx_Name" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="btn_Add" runat="server" Text="Add" OnClick="btn_Add_Click"/></td>
                </tr>
                 
            </table>

            <table style="width: 100%;" class="table1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Id:"></asp:Label></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbx_UpdatedId" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="Name:"></asp:Label></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="tbx_UpdatedName" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="btn_Update" runat="server" Text="Update" OnClick="btn_Update_Click" /></td>
                </tr>
                 
            </table>

            <table style="width: 100%;" class="table5">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label10" runat="server" Text="Id:"></asp:Label></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="tbx_DeletedCategoryId" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="btn_Delete" runat="server" Text="Delete" OnClick="btn_Delete_Click"/></td>
                </tr>
            </table>

             <table style="width: 100%;">
                <tr>
                    <td class="auto-style4" >
                        <asp:ListBox ID="ListBox1" Width ="89%" runat="server"></asp:ListBox></td>
                   
                    <td>
                        <asp:Button ID="btn_List" runat="server" Text="List" OnClick="btn_List_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
