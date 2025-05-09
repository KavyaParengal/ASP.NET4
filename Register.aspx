<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication4.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            
            <asp:Panel ID="Panel1" runat="server" Height="620px" style="text-align: center">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="32pt" ForeColor="#000099" Text="SIGN UP"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Designation"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="text-align: center">
                    <asp:ListItem Value="-1">Select your designation</asp:ListItem>
                    <asp:ListItem Value="1">Trainer</asp:ListItem>
                    <asp:ListItem Value="2">Trainee</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Employee Code"></asp:Label>
    &nbsp;
    <asp:TextBox ID="Txtempcode" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Txtpass" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <asp:Label ID="Label7" runat="server" Text="Department"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Txtdept" runat="server"></asp:TextBox>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server" Visible="False">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Subjects"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" RepeatColumns="3" Width="331px">
                        <asp:ListItem Value="1">HTML &amp; CSS</asp:ListItem>
                        <asp:ListItem Value="2">Oracle</asp:ListItem>
                        <asp:ListItem Value="3">C#</asp:ListItem>
                        <asp:ListItem Value="4">ASP .NET</asp:ListItem>
                        <asp:ListItem Value="5">Flutter</asp:ListItem>
                        <asp:ListItem Value="6">Javascript</asp:ListItem>
                    </asp:CheckBoxList>
                </asp:Panel>
                <br />
    <br />
                <asp:Button ID="Btnregister" runat="server" BackColor="#000099" BorderColor="#3366FF" BorderStyle="Double" Font-Names="Times New Roman" Font-Size="11pt" ForeColor="White" Height="36px" Text="Sign Up" Width="87px" OnClick="Btnregister_Click" />
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Font-Names="Times New Roman" Text="Don't have an account? "></asp:Label>
            &nbsp;<asp:LinkButton ID="Lnblogin" runat="server" Font-Names="Times New Roman" Font-Underline="False" ForeColor="#000099" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
            <br />
                <br />
    
    <br />
</asp:Panel>
        </div>
    </form>
</body>
</html>
