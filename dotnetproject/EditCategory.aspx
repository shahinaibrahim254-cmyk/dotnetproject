<%@ Page Title="Edit Category" Language="C#" MasterPageFile="~/Site8.Master"
    AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="dotnetproject.EditCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit Categories</h2>
<p>&nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="category_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:BoundField DataField="category_name" HeaderText="Name" />
            <asp:ImageField DataImageUrlField="category_image" HeaderText="Image">
                <ControlStyle Height="150px" Width="150px" />
            </asp:ImageField>
            <asp:BoundField DataField="category_status" HeaderText="Status" />
            <asp:BoundField DataField="Category_description" HeaderText="Description" />
            <asp:TemplateField HeaderText="update image">
                <ItemTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HiddenField ID="HiddenField1" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="95px" Width="117px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
</p>
<p>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
</p>
    
</asp:Content>

