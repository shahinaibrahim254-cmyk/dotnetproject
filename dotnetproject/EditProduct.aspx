<%@ Page Title="Edit Product" Language="C#" MasterPageFile="~/Site9.Master"
    AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="dotnetproject.EditProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align:center;color:#ff7e5f;">Edit Product</h2>

<%--    <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="true"
        OnSelectedIndexChanged="ddlProducts_SelectedIndexChanged">
    </asp:DropDownList>--%>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="product_name" HeaderText="Product Name" />
                            <asp:ImageField DataImageUrlField="product_image" HeaderText="Product Image">
                                <ControlStyle Height="100px" Width="100px" />
                            </asp:ImageField>
                            <asp:BoundField DataField="product_status" HeaderText="Product Status" />
                            <asp:BoundField DataField="product_description" HeaderText="Product Description" />
                            <asp:BoundField DataField="product_price" HeaderText="Product Price" />
                            <asp:TemplateField HeaderText="Update Image">
                                <ItemTemplate>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <br />
                                    <asp:HiddenField ID="HiddenField1" runat="server" />
                                    <asp:Image ID="Image1" runat="server" Height="108px" Width="125px" />
                                    <br />
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>

    <asp:Panel ID="pnlEdit" runat="server" Visible="false">
        <table style="margin:auto; border-spacing:15px;">
            <tr>
                <td>&nbsp;</td>
                <td style="width: 29px">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 29px">
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 29px">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 29px">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
