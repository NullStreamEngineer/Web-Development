<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Prac5._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FFCC66">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p style="margin-left: 280px">
            <asp:Label ID="lblHeading" runat="server" Font-Bold="True" Font-Size="Medium" Text="Course Registration Form"></asp:Label>
        </p>
        <p style="margin-left: 280px">
            <asp:Label ID="lblStudentName" runat="server" Text="Student Name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvStudentName" runat="server" ErrorMessage="Name Required!" ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        </p>
        <p style="margin-left: 280px">
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email Required!" ForeColor="Red" ControlToValidate="txtEmail" ></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rfvCorrectEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Correct Form Email!" ForeColor="Red" style="text-align: right" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
        <p style="margin-left: 280px">
            <asp:ListBox ID="lstCourses" runat="server" Height="153px" Width="335px">
                <asp:ListItem>Web Development</asp:ListItem>
                <asp:ListItem>Artifical Intelligence</asp:ListItem>
                <asp:ListItem>Data Science</asp:ListItem>
                <asp:ListItem>CyberSecurity</asp:ListItem>
            </asp:ListBox>
        </p>
        <p style="margin-left: 280px">
            <asp:Label ID="lblStudyMode" runat="server" Text="Study Mode:"></asp:Label>
            <asp:DropDownList ID="ddlStudyMode" runat="server" AutoPostBack="True">
                <asp:ListItem Value="">Select Study Mode</asp:ListItem>
                <asp:ListItem>Full-Time</asp:ListItem>
                <asp:ListItem>Part-Time</asp:ListItem>
                <asp:ListItem>Only Learning</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvStudyMode" runat="server" ErrorMessage="Study Mode Required!" ForeColor="Red" ControlToValidate="ddlStudyMode"></asp:RequiredFieldValidator>
        </p>
        <p style="margin-left: 280px">
            <asp:Button ID="btnRegister" runat="server" BackColor="#33CC33" Height="30px" OnClick="btnRegister_Click" Text="Register" Width="121px" />
            <asp:Button ID="btnClear" runat="server" BackColor="Yellow" OnClick="btnClear_Click" Text="Clear" />
            <br /><br />

<asp:Label ID="lblOutput" runat="server" ForeColor="Blue"></asp:Label>

        </p>
        <p style="margin-left: 280px">
            <asp:RequiredFieldValidator ID="rfvStudyMode0" runat="server" ErrorMessage="Make sure all the required information have been provided!" ForeColor="Red" ControlToValidate="lstCourses"></asp:RequiredFieldValidator>

<br /><br />

<asp:Image ID="imgCourse" runat="server" Width="180px" Visible="false" />
        </p>
        <p style="margin-left: 280px">
            &nbsp;</p>
        <p style="margin-left: 280px">
            &nbsp;</p>
    </form>
</body>
</html>
