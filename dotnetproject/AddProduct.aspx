<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/Site7.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="dotnetproject.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
        <h2>Add New Product</h2>

        <asp:Label ID="lblProductName" runat="server" Text="Product Name"></asp:Label>
        <asp:TextBox ID="txtProductName" runat="server" />

        <asp:Label ID="lblCategory" runat="server" Text="Category"></asp:Label>
        <asp:DropDownList ID="ddlCategory" runat="server" />

        <asp:Label ID="lblImage" runat="server" Text="Product Image"></asp:Label>
        <asp:FileUpload ID="fuProductImage" runat="server" />

        <asp:Label ID="lblDesc" runat="server" Text="Description"></asp:Label>
        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" />

        <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
        <asp:TextBox ID="txtPrice" runat="server" />

        <asp:Label ID="lblStock" runat="server" Text="Stock"></asp:Label>
        <asp:TextBox ID="txtStock" runat="server" />

        <asp:Button ID="btnAdd" runat="server" CssClass="btn" Text="Add Product" OnClick="btnAdd_Click" />
        <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Visible="False"></asp:Label>
    </div>
</asp:Content>

