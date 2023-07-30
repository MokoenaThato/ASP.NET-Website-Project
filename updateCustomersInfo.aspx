<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateCustomersInfo.aspx.cs" Inherits="Mokoena_27268217_Assessment2.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FFCC99">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: right;
            width: 202px;
        }
        .auto-style3 {
            width: 202px;
        }
        .auto-style4 {
            width: 186px;
        }
        .auto-style37 {
            width: 107px;
        }
        .auto-style35 {
            width: 65px;
        }
        .auto-style34 {
            width: 130px;
        }
        .auto-style33 {
            margin-left: 0px;
        }
        .auto-style31 {
            width: 191px;
        }
        .auto-style36 {
            text-align: right;
        }
        .auto-style38 {
            width: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" Text="Update Customer Information"></asp:Label>
            <br />
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Font-Underline="True" ForeColor="Red" Text="Note: ID number cannot be new"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="ID Number:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="idNumTxtBox" runat="server" Width="163px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="idNumValidator" runat="server" ErrorMessage="ID number required" ControlToValidate="idNumTxtBox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="nameTxtBox" runat="server" Width="163px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="nameValidator" runat="server" ErrorMessage="Name required" ControlToValidate="nameTxtBox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Surname:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="surnameTxtBox" runat="server" Width="163px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="surnameValidator" runat="server" ErrorMessage="Surname required" ControlToValidate="surnameTxtBox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Email Address:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="emailTxtBox" runat="server" Width="163px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="emailRequiredValidator" runat="server" ControlToValidate="emailTxtBox" ErrorMessage="Email Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="emailValidator" runat="server" ErrorMessage="Email not in correct format" ControlToValidate="emailTxtBox" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="genderDropList" runat="server" AutoPostBack="True" Height="53px" ItemType="String" Width="168px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="genderDropListValidator" runat="server" ControlToValidate="genderDropList" ErrorMessage="Please select gender" ForeColor="#CC0000" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style37">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style34">
                    <asp:Button ID="updateBtn" runat="server" Text="Update" Width="89px" CssClass="auto-style33" OnClick="submitBtn_Click" />
                </td>
                <td class="auto-style31">
                    <input id="resetControls" class="auto-style38" type="reset" value="reset" /></td>
                <td class="auto-style36">
                    <asp:HyperLink ID="homeHyperLink" runat="server" NavigateUrl="~/adminWorkPage.aspx">Back to admin</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
