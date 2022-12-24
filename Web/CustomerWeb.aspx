<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerWeb.aspx.cs" Inherits="Web.CustomerWeb" %>

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="StyleSheet.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;" class="table4">
                <tr>
                    <td>
                        <asp:Button ID="btn_GetAll" Width ="50%" runat="server" Text="GetAll" OnClick="btn_GetAll_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:ListBox ID="ListBox1" Width="400%" runat="server"></asp:ListBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="OrderCoffeeName:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="tbx_Name" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="Btn_Order" runat="server" Text="Order" OnClick="Btn_Order_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
