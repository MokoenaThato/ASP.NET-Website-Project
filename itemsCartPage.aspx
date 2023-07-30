<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="itemsCartPage.aspx.cs" Inherits="Mokoena_27268217_Assessment2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FFFF66">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 307px;
        }
        .auto-style3 {
            width: 153px;
        }
        .auto-style4 {
            width: 153px;
            text-align: right;
        }
        .auto-style5 {
            width: 307px;
            text-align: left;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            width: 212px;
        }
        .auto-style8 {
            width: 235px;
        }
        .auto-style9 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" Text="Customer Medication Cart" Font-Underline="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblWelcome" runat="server"></asp:Label>
        </div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Medication Name:" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="nameTxtBox" runat="server" Width="228px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="addToCartBtn" runat="server" Text="Add to Cart" Width="125px" OnClick="addToCartBtn_Click" Font-Bold="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="medicationValidator" runat="server" ErrorMessage="Medication is required" ControlToValidate="nameTxtBox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:ListBox ID="MedicationListBox" runat="server" Height="244px" Width="619px"></asp:ListBox>
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width:100%;">
                <tr>
                    <td class="auto-style7">
                        <asp:HyperLink ID="homeHyperLink" runat="server" NavigateUrl="~/homePage.aspx">Back to home</asp:HyperLink>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="checkoutHyperLink" runat="server" NavigateUrl="~/checkoutPage.aspx">Checkout</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </form>
</body>
</html>
