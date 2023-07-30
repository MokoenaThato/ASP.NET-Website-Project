<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkoutPage.aspx.cs" Inherits="Mokoena_27268217_Assessment2.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #00CC99">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 292px;
        }
        .auto-style3 {
            width: 136px;
        }
        .auto-style4 {
            width: 292px;
            height: 18px;
        }
        .auto-style5 {
            width: 136px;
            height: 18px;
        }
        .auto-style6 {
            height: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" Text="Customer Checkout Page" Font-Underline="True"></asp:Label>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Select drop off date: " Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Calendar ID="theCalendar" runat="server" OnSelectionChanged="theCalendar_SelectionChanged"></asp:Calendar>
&nbsp; </td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Payment type:" Font-Bold="True"></asp:Label>
                    <br />
                    <asp:RadioButton ID="medicalRadioBtn" runat="server" Text="Medical" GroupName="PaymentMethod" OnCheckedChanged="medicalRadioBtn_CheckedChanged" />
                    <br />
                    <asp:RadioButton ID="selfPayingRadioBtn" runat="server" Text="Self Paying" GroupName="PaymentMethod" OnCheckedChanged="medicalRadioBtn_CheckedChanged" />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="finishBtn" runat="server" OnClick="finishBtn_Click" Text="Finish" Width="78px" Font-Bold="True" />
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style6">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homePage.aspx">Back to home</asp:HyperLink>
                </td>
            </tr>
        </table>
        <p>
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>
                </p>
    </form>
</body>
</html>
