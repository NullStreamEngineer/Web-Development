<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="Project_3.LogInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="ModeColor.css" />

    <style type="text/css">
        .auto-style1 {
            width: 423px;
            text-align: right;
        }
        .auto-style2 {
            width: 445px;
        }
        .auto-style3 {
            width: 423px;
            text-align: right;
            height: 53px;
        }
        .auto-style4 {
            width: 445px;
            height: 53px;
        }
        .auto-style5 {
            height: 53px;
        }
    </style>
</head>
<body runat="server" id="bodyTag">
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td colspan="3" style="font-size: xx-large; text-align: center">
                    <asp:Label ID="lblHeading" runat="server" Font-Bold="True" Text="Log In "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="lblOutput" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblUsername" runat="server" Font-Bold="True" Text="Username:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUsername" runat="server" Width="209px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Enter a username!" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblPassword" runat="server" Font-Bold="True" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPassword" runat="server" Width="209px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter a passsword!" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
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
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Button CssClass="myButtons" ID="btnLogIn" runat="server" BorderStyle="Solid" Font-Bold="True" Height="49px" Text="Log In" Width="171px" OnClick="btnLogIn_Click"/>
                </td>
                <td class="auto-style5"></td>
            </tr>

            <tr><td colspan="3" style="height:40px;"></td></tr>

            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style2">

                    &nbsp;&nbsp;&nbsp;

                    </td>
                <td>&nbsp;</td>
            </tr>

        </table>
    </form>
</body>
</html>