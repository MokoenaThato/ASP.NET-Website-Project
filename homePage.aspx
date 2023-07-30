<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="Mokoena_27268217_Assessment2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FF99FF">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 273px;
        }
        .auto-style2 {
            width: 199px;
        }
        .auto-style3 {
            width: 100%;
            height: 114px;
        }
        .auto-style4 {
            width: 273px;
            height: 15px;
        }
        .auto-style5 {
            width: 199px;
            height: 15px;
        }
        .auto-style6 {
            height: 15px;
        }
        .auto-style7 {
            text-align: center;
            height: 265px;
        }
        .auto-style8 {
            width: 199px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="25pt" Text="Welcome To HealthFirst Pharmacy" Font-Underline="True"></asp:Label>
            <br />
            <asp:Image ID="Image1" runat="server" Height="168px" ImageUrl="~/medication.jpg" Width="297px" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="15pt" Text="Hello, first time customer need to register first"></asp:Label>
            <br />
            <br />
&nbsp;</div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="customerBtn" runat="server" Text="Customer" Width="109px" OnClick="customerBtn_Click" Font-Bold="True" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="registerBtn" runat="server" OnClick="registerBtn_Click" Text="Register" Width="112px" Font-Bold="True" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="adminBtn" runat="server" Text="Admin" Width="108px" OnClick="adminBtn_Click" Font-Bold="True" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
