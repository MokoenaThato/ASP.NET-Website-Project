<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerPage.aspx.cs" Inherits="Mokoena_27268217_Assessment2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #99CCFF">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 227px;
            text-align: right;
        }
        .auto-style5 {
            height: 23px;
            width: 170px;
        }
        .auto-style6 {
            width: 186px;
        }
        .auto-style7 {
            height: 23px;
            width: 186px;
        }
        .auto-style8 {
            width: 227px;
            height: 26px;
            text-align: right;
        }
        .auto-style9 {
            width: 170px;
            height: 26px;
        }
        .auto-style10 {
            width: 186px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style13 {
            width: 227px;
            text-align: right;
        }
        .auto-style16 {
            width: 186px;
            height: 11px;
        }
        .auto-style17 {
            height: 11px;
        }
        .auto-style20 {
            width: 227px;
        }
        .auto-style21 {
            width: 227px;
            height: 11px;
        }
        .auto-style22 {
            width: 170px;
        }
        .auto-style23 {
            width: 170px;
            height: 11px;
        }
        .auto-style24 {
            height: 26px;
            width: 51px;
        }
        .auto-style25 {
            height: 23px;
            width: 51px;
        }
        .auto-style26 {
            width: 51px;
        }
        .auto-style27 {
            height: 11px;
            width: 51px;
        }
        .auto-style28 {
            text-align: center;
        }
        .auto-style31 {
            width: 191px;
        }
        .auto-style33 {
            margin-left: 0px;
        }
        .auto-style34 {
            width: 130px;
        }
        .auto-style35 {
            width: 65px;
        }
        .auto-style36 {
            text-align: right;
        }
        .auto-style37 {
            width: 107px;
        }
        .auto-style38 {
            width: 227px;
            height: 33px;
            text-align: right;
        }
        .auto-style39 {
            width: 170px;
            height: 33px;
        }
        .auto-style40 {
            width: 186px;
            height: 33px;
        }
        .auto-style41 {
            height: 33px;
            width: 51px;
        }
        .auto-style42 {
            height: 33px;
        }
        .auto-style43 {
            width: 94px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style28">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" Text="Customer Registeration Page"></asp:Label>
            <br />
            <br />
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Text="Name:" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="nameTxtBox" runat="server" Width="163px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="nameValidator" runat="server" ErrorMessage="Name required" ControlToValidate="nameTxtBox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style24"></td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Surname:" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="surnameTxtBox" runat="server" Width="163px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="surnameValidator" runat="server" ErrorMessage="Surname required" ControlToValidate="surnameTxtBox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label4" runat="server" Text="ID Number:" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="idNumTxtBox" runat="server" Width="163px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="idNumValidator" runat="server" ErrorMessage="ID number required" ControlToValidate="idNumTxtBox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label5" runat="server" Text="Email Address:" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="emailTxtBox" runat="server" Width="163px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="emailRequiredValidator" runat="server" ControlToValidate="emailTxtBox" ErrorMessage="Email Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="emailValidator" runat="server" ErrorMessage="Email not in correct format" ControlToValidate="emailTxtBox" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38">
                    <asp:Label ID="Label6" runat="server" Text="Gender:" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style39">
                    <asp:DropDownList ID="genderDropList" runat="server" AutoPostBack="True" Height="53px" ItemType="String" Width="168px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style40">
                    <asp:RequiredFieldValidator ID="genderDropListValidator" runat="server" ControlToValidate="genderDropList" ErrorMessage="Please select gender" ForeColor="#CC0000" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style41"></td>
                <td class="auto-style42"></td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="Label7" runat="server" Text="Create Username and Password" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style23"></td>
                <td class="auto-style16"></td>
                <td class="auto-style27"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label8" runat="server" Text="Username:" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="usernameTxtBox" runat="server" Width="163px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ErrorMessage="Username required" ControlToValidate="usernameTxtBox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label9" runat="server" Text="Password:" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="passwordTxtBox" runat="server" Width="163px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ErrorMessage="Password required" ControlToValidate="passwordTxtBox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label10" runat="server" Text="Confirm Password:" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="confirmPassTxtBox" runat="server" Width="163px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="confirmValidator" runat="server" ErrorMessage="Confirmation required" ControlToValidate="confirmPassTxtBox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="confirmPassValidator" runat="server" ErrorMessage="Passwords don't match" ControlToCompare="passwordTxtBox" ControlToValidate="confirmPassTxtBox" ForeColor="#CC0000"></asp:CompareValidator>
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
        <p>
            <table style="width:100%;">
                <tr>
                    <td>
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style35">&nbsp;</td>
                    <td class="auto-style34">
                    <asp:Button ID="submitBtn" runat="server" Text="Submit" Width="89px" CssClass="auto-style33" OnClick="submitBtn_Click" Font-Bold="True" />
                    </td>
                    <td class="auto-style31">
                        <input id="resetControls" class="auto-style43" type="reset" value="reset" /></td>
                    <td class="auto-style36">
                    <asp:HyperLink ID="homeHyperLink" runat="server" NavigateUrl="~/homePage.aspx">Back to home</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
