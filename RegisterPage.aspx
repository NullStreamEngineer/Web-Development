<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Project_3.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="ModeColor.css" />

    <style type="text/css">
        .auto-style1 {
            width: 521px;
            text-align: right;
        }
        .auto-style2 {
            width: 521px;
            text-align: center;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 445px;
        }
        .auto-style5 {
            height: 26px;
            width: 445px;
        }
        .auto-style6 {
            width: 521px;
            text-align: right;
            height: 26px;
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
                    <asp:Label ID="lblHeading" runat="server" Font-Bold="True" Text="Sign Up"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblUsername" runat="server" Font-Bold="True" Text="Username:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtUsername" runat="server" Width="212px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Enter a username!" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblPassword" runat="server" Font-Bold="True" Text="Password:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" runat="server" Width="211px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter a password!" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblSelectRole" runat="server" Font-Bold="True" Text="Select a Role:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RadioButton ID="rdoBuyer" runat="server" Font-Bold="True" GroupName="Roles" Text="Buyer" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdoSeller" runat="server" Font-Bold="True" GroupName="Roles" Text="Seller" />
                </td>
                <td>
                    <asp:Label ID="lblOutput" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button CssClass="myButtons" ID="btnSignUp" runat="server" BorderStyle="Solid" Font-Bold="True" Height="50px" Text="Sign Up" Width="128px" OnClick="btnSignUp_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
                        <tr><td colspan="3" style="height:40px;"></td></tr>

            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">

                    &nbsp;&nbsp;&nbsp;

                    </td>
                <td class="auto-style3"></td>
            </tr>

        </table>
    </form>
</body>
</html>