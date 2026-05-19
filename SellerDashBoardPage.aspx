<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellerDashBoardPage.aspx.cs" Inherits="Project_3.SellerDashBoardPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="ModeColor.css" />

    <style type="text/css">
        .auto-style1 {
            width: 497px;
            text-align: right;
        }
        .auto-style2 {
            width: 332px;
            text-align: center;
        }
        .auto-style3 {            text-align: center;
        }
        .auto-style6 {
            width: 332px;
            text-align: left;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: left;
            height: 228px;
        }
        .auto-style9 {
            width: 231px;
        }
    </style>
</head>
<body runat="server" id="bodyTag">
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td colspan="3" style="text-align: center; font-size: xx-large">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblHeading" runat="server" Font-Bold="True" Text="Seller Dashboard"></asp:Label>
                </td>
                <td style="text-align: center; font-size: xx-large">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" ForeColor="#66FF33"></asp:Label>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblProductID" runat="server" Font-Bold="True" Text="Product ID:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtProductID" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblProductName" runat="server" Font-Bold="True" Font-Italic="False" Text="Product Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtProductName" runat="server" Width="214px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblCategory" runat="server" Font-Bold="True" Text="Category:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCategory" runat="server" Width="215px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblDescription" runat="server" Font-Bold="True" Text="Description:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtDescription" runat="server" Width="217px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblPrice" runat="server" Font-Bold="True" Text="Price:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPrice" runat="server" Width="218px"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnInsert" runat="server" BackColor="#99FF33" BorderStyle="Solid" Font-Bold="True" Height="46px" Text="ADD" Width="114px" OnClick="btnInsert_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="btnDelete" runat="server" BackColor="#FF3300" BorderStyle="Solid" Font-Bold="True" Height="45px" Text="DELETE" Width="110px" OnClick="btnDelete_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="btnUpdate" runat="server" BackColor="#66CCFF" BorderStyle="Solid" Font-Bold="True" Height="42px" Text="UPDATE" Width="102px" OnClick="btnUpdate_Click" />
                </td>
                <td>
                    <asp:Button CssClass="myButtons" ID="btnClear" runat="server" Font-Bold="True" Height="38px" OnClick="btnClear_Click" Text="Clear" Width="101px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="3">
                    <asp:GridView ID="gvProducts" runat="server" Height="224px" Width="795px">
                        <HeaderStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="lblOutput" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="3">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="3">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="3">
                    <asp:Button CssClass="myButtons" ID="btnLogOut" runat="server" Font-Bold="True" Height="45px" OnClick="btnLogOut_Click" Text="Log Out" Width="116px" />
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
