
<%@ Page Title="Admin Register" Language="C#" MasterPageFile="~/Site4.Master"
    AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="dotnetproject.AdminRegister"
    UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="register-container">
        <div class="register-card">
            <h2>Admin Registration</h2>

            <!-- Name -->
            <div class="form-group">
                <asp:Label ID="lblName" runat="server" Text="Full Name"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" CssClass="textbox" placeholder="Enter full name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server"
                    ControlToValidate="txtName" ErrorMessage="Name is required"
                    ForeColor="Red" Display="Dynamic" />
            </div>

            <!-- Phone -->
            <div class="form-group">
                <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox" placeholder="Enter phone number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                    ControlToValidate="txtPhone" ErrorMessage="Phone is required"
                    ForeColor="Red" Display="Dynamic" />
            </div>

            <!-- Email -->
            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox" placeholder="Enter email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                    ControlToValidate="txtEmail" ErrorMessage="Email is required"
                    ForeColor="Red" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Invalid email format"
                    ForeColor="Red" Display="Dynamic"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" />
            </div>

            <!-- Username -->
            <div class="form-group">
                <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="textbox" placeholder="Choose a username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server"
                    ControlToValidate="txtUsername" ErrorMessage="Username is required"
                    ForeColor="Red" Display="Dynamic" />
            </div>

            <!-- Password -->
            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                    ControlToValidate="txtPassword" ErrorMessage="Password is required"
                    ForeColor="Red" Display="Dynamic" />
            </div>

            <asp:Button ID="btnRegister" runat="server" CssClass="btn-primary" Text="Register" OnClick="btnRegister_Click" />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
    </main>
</asp:Content>
