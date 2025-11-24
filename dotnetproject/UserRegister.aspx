
<%@ Page Title="User Register" Language="C#" MasterPageFile="~/Site3.Master"
    AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="dotnetproject.UserRegister"
    UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="register-container">
        <div class="register-card">
            <h2>User Registration</h2>

            <!-- Name -->
            <div class="form-group">
                <asp:Label ID="lblName" runat="server" Text="Full Name"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" CssClass="textbox" placeholder="Enter full name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server"
                    ControlToValidate="txtName" ErrorMessage="Name is required"
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

            <!-- Age -->
            <div class="form-group">
                <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                <asp:TextBox ID="txtAge" runat="server" CssClass="textbox" placeholder="Enter age"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAge" runat="server"
                    ControlToValidate="txtAge" ErrorMessage="Age is required"
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

            <!-- Address -->
            <div class="form-group">
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                <asp:TextBox ID="txtAddress" runat="server" CssClass="textbox" placeholder="Enter address"></asp:TextBox>
            </div>

            <!-- Delivery Address -->
            <div class="form-group">
                <asp:Label ID="lblDelivery" runat="server" Text="Delivery Address"></asp:Label>
                <asp:TextBox ID="txtDelivery" runat="server" CssClass="textbox" placeholder="Enter delivery address"></asp:TextBox>
            </div>

            <!-- State -->
            <div class="form-group">
                <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                <asp:TextBox ID="txtState" runat="server" CssClass="textbox" placeholder="Enter state"></asp:TextBox>
            </div>

            <!-- District -->
            <div class="form-group">
                <asp:Label ID="lblDistrict" runat="server" Text="District"></asp:Label>
                <asp:TextBox ID="txtDistrict" runat="server" CssClass="textbox" placeholder="Enter district"></asp:TextBox>
            </div>

            <!-- Pincode -->
            <div class="form-group">
                <asp:Label ID="lblPincode" runat="server" Text="Pincode"></asp:Label>
                <asp:TextBox ID="txtPincode" runat="server" CssClass="textbox" placeholder="Enter pincode"></asp:TextBox>
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
