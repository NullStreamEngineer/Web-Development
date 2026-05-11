<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Practical_9._0.Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 264px;
        }
        .auto-style2 {
            width: 575px;
        }
        .auto-style3 {
            width: 264px;
            height: 271px;
        }
        .auto-style4 {
            width: 575px;
            height: 271px;
        }
        .auto-style5 {
            height: 271px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #00FFFF; height: 821px;">
            <table style="width: 100%; height: 459px;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblHeader" runat="server" Font-Size="40px" Text="Slot Booking Confirmation"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblOutput" runat="server" Font-Bold="True" Font-Size="20px"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblOutput1" runat="server" Font-Bold="True" Font-Size="20px"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblOutput2" runat="server" Font-Bold="True" Font-Size="20px"></asp:Label>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBook" runat="server" BackColor="Blue" Height="23px" OnClick="btnBook_Click" Text="Book New Slot" Width="190px" />
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
