<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminWorkPage.aspx.cs" Inherits="Mokoena_27268217_Assessment2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #6699FF">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style5 {
            width: 149px;
        }
        .auto-style8 {
            text-align: left;
            width: 134px;
        }
        .auto-style12 {
            width: 107px;
            text-align: left;
            height: 23px;
        }
        .auto-style13 {
            width: 149px;
            height: 23px;
        }
        .auto-style16 {
            height: 23px;
        }
        .auto-style17 {
            width: 122px;
            height: 23px;
        }
        .auto-style18 {
            width: 122px;
        }
        .auto-style19 {
            width: 122px;
            text-align: left;
        }
        .auto-style20 {
            width: 124px;
            height: 23px;
        }
        .auto-style21 {
            width: 124px;
        }
        .auto-style22 {
            text-align: right;
            width: 134px;
        }
        .auto-style23 {
            width: 124px;
            text-align: center;
        }
        .auto-style24 {
            width: 122px;
            text-align: center;
        }
        .auto-style25 {
            margin-left: 0px;
        }
        .auto-style29 {
            width: 134px;
            height: 23px;
        }
        .auto-style30 {
            width: 134px;
        }
        .auto-style31 {
            width: 107px;
            text-align: left;
        }
        .auto-style32 {
            width: 107px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" Text="Admin Work Page" Font-Underline="True"></asp:Label>
            <br />
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label2" runat="server" Font-Underline="True" Text="Delete Client" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style29"></td>
                <td class="auto-style20"></td>
                <td class="auto-style17">
                    <asp:Label ID="Label4" runat="server" Font-Underline="True" Text="Search by:" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style31">
                    <asp:Label ID="Label3" runat="server" Text="ID Number:" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="customerIdTxtBox" runat="server" Width="152px"></asp:TextBox>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Label ID="Label5" runat="server" Text="Customer Name:" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="searchNameTxtBox" runat="server" Width="152px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">
                    <asp:Button ID="deleteBtn" runat="server" Text="Delete" OnClick="deleteBtn_Click" Font-Bold="True" />
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="idValidator" runat="server" ErrorMessage="ID number is required" ControlToValidate="customerIdTxtBox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lblDelete" runat="server"></asp:Label>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style18">
                    <asp:Button ID="searchBtn" runat="server" Text="Search" OnClick="searchBtn_Click" Font-Bold="True" />
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="searchValidator" runat="server" ErrorMessage="Name is required" ControlToValidate="searchNameTxtBox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Button ID="displayBtn" runat="server" CssClass="auto-style25" Text="Display" Width="125px" OnClick="displayBtn_Click" Font-Bold="True" />
                </td>
                <td class="auto-style23">
                    <asp:Button ID="addCustomer" runat="server" Text="New Customer" OnClick="addCustomer_Click" Font-Bold="True" />
                </td>
                <td class="auto-style24">
                    <asp:Button ID="updateBtn" runat="server" Text="Update" Width="110px" OnClick="updateBtn_Click" Font-Bold="True" />
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:GridView ID="customersGridView" runat="server" Height="242px" Width="706px">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:HyperLink ID="homeHyperLink" runat="server" NavigateUrl="~/homePage.aspx">Back to home</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="lblError" runat="server" ForeColor="Black"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
