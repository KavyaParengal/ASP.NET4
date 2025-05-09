<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication4.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Panel ID="Panel1" runat="server" Height="355px" style="text-align: center; margin-left: 103px" Width="834px">
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="32pt" ForeColor="#000099" Text="LOGIN"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Names="Times New Roman" Text="User Name"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Font-Names="Times New Roman" Text="Password"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Btnlogin" runat="server" BackColor="#000099" BorderColor="#3366FF" BorderStyle="Double" Font-Names="Times New Roman" Font-Size="11pt" ForeColor="White" Height="36px" OnClick="Btnlogin_Click" Text="Login" Width="87px" />
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Names="Times New Roman" Text="Don't have an account? "></asp:Label>
                &nbsp;<asp:LinkButton ID="Lnbregister" runat="server" Font-Names="Times New Roman" Font-Underline="False" ForeColor="#000099" PostBackUrl="~/Register.aspx">Register</asp:LinkButton>
                <br />
            </asp:Panel>

        </div>
    </form>
</body>
</html>
