<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="dotnetproject.Login"
    UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="login-container">
        <div class="login-card">
            <h2>Login to Your Account</h2>

            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Username"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" placeholder="Enter your Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                    ControlToValidate="txtEmail" ErrorMessage="Username is required"
                    ForeColor="Red" Display="Dynamic" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox"
                    TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                    ControlToValidate="txtPassword" ErrorMessage="Password is required"
                    ForeColor="Red" Display="Dynamic" />
            </div>

            <asp:Button ID="btnLogin" runat="server" CssClass="btn-primary" Text="Login" OnClick="btnLogin_Click" />

            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>

            <p class="register-link">
                Don’t have an account? <a href="Register.aspx">Register here</a>
            </p>
        </div>
    </main>
</asp:Content>
