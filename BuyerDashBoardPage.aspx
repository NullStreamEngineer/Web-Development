<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyerDashBoardPage.aspx.cs" Inherits="Project_3.BuyerDashBoardPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" type="text/css" href="ModeColor.css" />

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 496px;
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 363px;
        }
        .auto-style5 {
            width: 496px;
            text-align: right;
            height: 29px;
        }
        .auto-style6 {
            width: 363px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style8 {
            text-align: center;
            height: 233px;
        }
    </style>

    <script type="text/javascript">
        function updatePriceLabel(value) {
            document.getElementById('<%= lblPriceValue.ClientID %>').innerText = value;
        }

        function priceChanged() {
            __doPostBack('<%= hdnPrice.ClientID %>', '');
        }
    </script>

</head>
<body runat="server" id="bodyTag">
    <form id="form1" runat="server">

        <asp:HiddenField ID="hdnPrice" runat="server" />

        <div>
        </div>
        <table style="width:100%; height: 571px;">
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Label ID="lblHeading" runat="server" Font-Bold="True" style="font-size: xx-large" Text="Buyer Storefront"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" style="font-size: large; text-align: center" Text="Looking for a product? Browse through our inventory by using the filters below"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblFilterByCategory" runat="server" Font-Bold="True" Text="Filter by Category:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlCategory" runat="server" Height="27px" Width="200px" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblFilterByName" runat="server" Font-Bold="True" ForeColor="Black" Text="Filter by Product Name:"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtProductName" runat="server" Width="190px" OnTextChanged="txtProductName_TextChanged" AutoPostBack="True"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblFilterByPrice" runat="server" Font-Bold="True" ForeColor="Black" Text="Filter by Price:"></asp:Label>
                </td>

                <td class="auto-style4">
                    <input type="range" id="priceSlider" min="0" max="10000" step="10" oninput="updatePriceLabel(this.value)" onchange="priceChanged()" />

                    &nbsp

                    <asp:Label ID="lblPriceValue" runat="server" Text="0"></asp:Label>

                </td>
                <td>
                    <asp:Label ID="lblOutput" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="3">
                    <asp:GridView ID="gvProducts" runat="server" Height="266px" Width="733px">
                        <HeaderStyle BackColor="Silver" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="3">
                    <asp:Button CssClass="myButtons" ID="btnLogOut" runat="server" BorderStyle="Solid" Font-Bold="True" Height="48px" Text="Log Out" Width="153px" OnClick="btnLogOut_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
