<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCoffeeWeb.aspx.cs" Inherits="Web.AdminCoffeeWeb" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="StyleSheet.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 514px;
        }
        .auto-style2 {
            width: 517px;
        }
        .auto-style3 {
            width: 515px;
        }
        .auto-style6 {
            width: 900px;
        }
        .auto-style7 {
            width: 902px;
        }
        .auto-style8 {
            width: 904px;
        }
        .auto-style9 {
            width: 1418px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table style="width: 100%;" class="table">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Category Id:"></asp:Label></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="tbx_CategoryId" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="tbx_Name" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="UnitPrice"></asp:Label></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="tbx_UnitPrice" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="UnitsInStock"></asp:Label></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="tbx_UnitsInStock" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="btn_Add" runat="server" Text="Add" OnClick="btn_Add_Click" /></td>
                </tr>
                 
            </table>

            <table style="width: 100%;" class="table1">
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="Coffee Id:"></asp:Label></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="tbx_UpdatedId" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Category Id:"></asp:Label></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="tbx_UpdatedCategoryId" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Name"></asp:Label></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="tbx_UpdatedName" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="UnitPrice"></asp:Label></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="tbx_UpdatedUnitPrice" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label8" runat="server" Text="UnitsInStock"></asp:Label></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="tbx_UpdatedUnitsInStock" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="btn_Update" runat="server" Text="Update" OnClick="btn_Update_Click" /></td>
                </tr>
                 
            </table>

            <table style="width: 100%;" class="table2">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label10" runat="server" Text="Coffee Id:"></asp:Label></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="tbx_DeletedCoffeeId" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="btn_Delete" runat="server" Text="Delete" OnClick="btn_Delete_Click" /></td>
                </tr>
            </table>

             <table style="width: 100%;">
                <tr>
                    <td class="auto-style9" >
                        <asp:ListBox ID="ListBox1" Width ="89%" runat="server"></asp:ListBox></td>
                   
                    <td>
                        <asp:Button ID="btn_List" runat="server" Text="List" OnClick="btn_List_Click" /></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
