<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-color:aliceblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="margin:auto;border:5px solid white">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                </td>
            <td>
                <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
                </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
