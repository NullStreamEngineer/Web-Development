<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Project_3.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="ModeColor.css" />

    <style type="text/css">
        .auto-style1 {
            width: 518px;
            text-align: right;
        }
        .auto-style2 {
            width: 435px;
            text-align: center;
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
                    <asp:Label ID="lblHeading" runat="server" Font-Bold="True" style="text-align: center" Text="MegaTronics Tech Shop"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center; font-size: x-large">
                    <asp:Label ID="lblSlogan" runat="server" Font-Bold="True" Text="Smart tech. Simpler life."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" rowspan="2">
                    <asp:Button CssClass="myButtons" ID="btnLogIn" runat="server" Text="Log In" Width="187px" Height="59px" OnClick="btnLogIn_Click" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td rowspan="2">
                    <asp:Button CssClass="myButtons" ID="btnSignUp" runat="server" Text="Sign Up" Width="166px" Height="62px" OnClick="btnSignUp_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button CssClass="myButtons" ID="btnDarkMode" runat="server" Text="Dark Mode" OnClick="btnDarkMode_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button CssClass="myButtons" ID="btnLightMode" runat="server" Text="Light Mode" OnClick="btnLightMode_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
