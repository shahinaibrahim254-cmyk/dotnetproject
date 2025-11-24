<%@ Page Title="Add Category" Language="C#" MasterPageFile="~/Site6.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="dotnetproject.AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
        <h2>Add New Category</h2>

        <asp:Label ID="lblName" runat="server" Text="Category Name"></asp:Label>
        <asp:TextBox ID="txtCategoryName" runat="server" />

        <asp:Label ID="lblImage" runat="server" Text="Category Image"></asp:Label>
        <asp:FileUpload ID="fuCategoryImage" runat="server" />

        <asp:Label ID="lblDesc" runat="server" Text="Description"></asp:Label>
        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" />

        <asp:Button ID="btnSave" runat="server" CssClass="btn" Text="Save" OnClick="btnSave_Click" />
        <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
    </div>
</asp:Content>
