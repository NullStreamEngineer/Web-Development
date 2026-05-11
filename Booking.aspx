<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Practical_9._0.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 405px;
        }
        .auto-style2 {
            height: 232px;
        }
        .auto-style3 {
            height: 232px;
            width: 301px;
        }
        .auto-style4 {
            height: 405px;
            width: 301px;
        }
        .auto-style5 {
            width: 301px;
        }
        .auto-style6 {
            height: 232px;
            width: 552px;
        }
        .auto-style7 {
            height: 405px;
            width: 552px;
        }
        .auto-style8 {
            width: 552px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; height: 893px;">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style6" style="background-color: #00FFFF">
                        <asp:Label ID="lblHeader" runat="server" Font-Size="25px" Text="Specify the Module and the date for your slot booking"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblOutput" runat="server" Font-Bold="True" ForeColor="Purple"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblModule" runat="server" Text="Select A Module:"></asp:Label>
                        <asp:DropDownList ID="ddlModule" runat="server">
                            <asp:ListItem>Select A Module</asp:ListItem>
                            <asp:ListItem>CMPG111</asp:ListItem>
                            <asp:ListItem>CMPG112</asp:ListItem>
                            <asp:ListItem>ITSP111</asp:ListItem>
                            <asp:ListItem>ITSP113</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblSelect" runat="server" Text="Select A Date on the Calendar:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Calendar ID="Calendar1" runat="server" Height="310px" Width="403px">
                            <DayHeaderStyle BackColor="Aqua" />
                            <SelectorStyle BackColor="Red" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBook" runat="server" BackColor="Turquoise" Height="30px" OnClick="btnBook_Click" Text="Book" Width="229px" />
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
