<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Practical7._0._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-image: url('Images/volleyball picture.jpg')">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 357px;
        }
        .auto-style2 {
            height: 357px;
            width: 324px;
            margin-left: 160px;
        }
        .auto-style3 {
            width: 324px;
            margin-left: 120px;
        }
        .auto-style4 {
            height: 357px;
            width: 327px;
        }
        .auto-style5 {
            width: 327px;
        }
    </style>
</head >
<body>
    <form id="form1" runat="server">
        <p style="margin-left: 80px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="90px" ImageUrl="~/Images/nwu logo.png" Width="106px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LblHeader" runat="server" BackColor="White" Font-Bold="True" Font-Size="30px" ForeColor="#FF66FF" Text="Visual Volleyball Coaching Class Booking"></asp:Label>
        </p>
        <p style="height: 44px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table style="width: 100%; height: 201px;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblName" runat="server" Font-Bold="True" Text="Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter your Name!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="lblEmail0" runat="server" Font-Bold="True" Text="Email:"></asp:Label>
&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmail" runat="server" Width="157px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter a Valid Email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                        <asp:Label ID="lblStudentName" runat="server" Font-Bold="True" Text="Student Name:"></asp:Label>
&nbsp;
                        <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvStudentNumber" runat="server" ControlToValidate="txtStudentName" ErrorMessage="Please Enter a Valid Student Number!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Label ID="lblCampus" runat="server" Font-Bold="True" Text="Select Campus:"></asp:Label>
&nbsp;
                        <br />
                        <br />
                        <asp:RadioButton ID="rdoPC" runat="server" BackColor="#CC33FF" GroupName="rdoCampus" Text="PC" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rdoMC" runat="server" BackColor="#CC33FF" GroupName="rdoCampus" Text="MC" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rdoVC" runat="server" BackColor="#CC33FF" GroupName="rdoCampus" Text="VC" />
                    </td>
                    <td class="auto-style4">
                        <asp:Calendar ID="thisCal" runat="server" BorderColor="Black" ForeColor="Black" style="margin-left: 10px">
                            <DayStyle BackColor="LightGreen" Font-Bold="True" />
                            <TitleStyle BackColor="Blue" Font-Bold="True" />
                            <TodayDayStyle BackColor="LightYellow" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="lblOutput" runat="server" BackColor="#CC33FF" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Label ID="lblOutput1" runat="server" BackColor="#CC33FF" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBook" runat="server" BackColor="Red" Font-Bold="True" OnClick="btnBook_Click" Text="Book" Width="139px" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnClear" runat="server" BackColor="Green" Font-Bold="True" Height="24px" OnClick="btnClear_Click" Text="Clear" Width="143px" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
    </form>
</body>
</html>
