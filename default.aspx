<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Prac6._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body runat="server" style="background-color: cyan;">
    <form id="form1" runat="server">
        <div style="margin-left: 320px">
            <asp:Label ID="lblHeading" runat="server" Font-Bold="True" ForeColor="Blue" style="text-align: left" Text="Complete this Form to order Pizza"></asp:Label>
        </div>
        <div style="margin-left: 40px">
        </div>
&nbsp;<asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Enter a Name!"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter a valid Email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lblSelectSize" runat="server" Text="Select Size:"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="ddlSize" runat="server">
            <asp:ListItem>Select an Item</asp:ListItem>
            <asp:ListItem>Small</asp:ListItem>
            <asp:ListItem>Medium</asp:ListItem>
            <asp:ListItem>Large</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvSize" runat="server" ControlToValidate="ddlSize" ErrorMessage="Please Select A Size!"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblToppings" runat="server" Text="Select Toppings:"></asp:Label>
        <div style="margin-left: 160px">
            <asp:ListBox ID="lstToppings" runat="server" Height="107px" Width="122px" AutoPostBack="True">
                <asp:ListItem>Cheese</asp:ListItem>
                <asp:ListItem>Pepperoni</asp:ListItem>
                <asp:ListItem>Mushroom</asp:ListItem>
                <asp:ListItem>Olives</asp:ListItem>
            </asp:ListBox>
            <asp:RequiredFieldValidator ID="rfvToppings" runat="server" ControlToValidate="lstToppings" ErrorMessage="Please Select A Topping!"></asp:RequiredFieldValidator>
        </div>
        <asp:Label ID="lblCrustType" runat="server" Text="Crust Type:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdoThick" runat="server" GroupName="rdoCrustType" Text="Thick" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="rdoThin" runat="server" GroupName="rdoCrustType" Text="Thin" />
&nbsp;<br />
        <asp:CheckBox ID="cbxTip" runat="server" Text="Add a Tip" AutoPostBack="True" OnCheckedChanged="cbxTip_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTip" runat="server" Visible="False"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnOrder" runat="server" Text="Order" Width="114px" OnClick="btnOrder_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="99px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div style="margin-left: 200px">
        </div>
        <p style="margin-left: 240px">
            <asp:Label ID="lblOutput" runat="server"></asp:Label>
        </p>
    </form>
    </body>
</html>

