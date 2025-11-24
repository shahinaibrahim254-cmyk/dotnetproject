<%--<%@ Page Title="Product View" Language="C#" MasterPageFile="~/Site11.Master"
    AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="dotnetproject.ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Products</h2>
    <p>
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="height: 32px">
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("product_id") %>' Height="80px" ImageUrl='<%# Eval("product_image") %>' />
                        </td>
                        <td style="width: 37px; height: 32px"></td>
                        <td style="height: 32px"></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                        </td>
                        <td style="width: 37px">&nbsp;</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("product_price") %>'></asp:Label>
                        </td>
                        <td style="width: 37px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("product_description") %>'></asp:Label>
                        </td>
                        <td style="width: 37px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 37px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    </asp:Content>--%>
<%--<%@ Page Title="Product View" Language="C#" MasterPageFile="~/Site11.Master"
    AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="dotnetproject.ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Products</h2>
    <p>
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="height: 32px; width: 122px;">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                CommandArgument='<%# Eval("product_id") %>' 
                                Height="80px" 
                                ImageUrl='<%# Eval("product_image") %>' OnCommand="ImageButton1_Command1" Width="123px" />
                        </td>
                        <td style="width: 52px; height: 32px"></td>
                        <td style="height: 32px"></td>
                    </tr>
                    <tr>
                        <td style="width: 122px">
                            <asp:Label ID="Label1" runat="server" 
                                Text='<%# Eval("product_name") %>' 
                                Font-Bold="true"></asp:Label>
                        </td>
                        <td style="width: 52px">&nbsp;</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="width: 122px">
                            <asp:Label ID="Label2" runat="server" 
                                Text='<%# "Rs. " + Eval("product_price") %>' 
                                Font-Bold="true"></asp:Label>
                        </td>
                        <td style="width: 52px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 122px">
                            <asp:Label ID="Label3" runat="server" 
                                Text='<%# Eval("product_description") %>'></asp:Label>
                        </td>
                        <td style="width: 52px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 122px">&nbsp;</td>
                        <td style="width: 52px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>--%><%@ Page Title="Product View" Language="C#" MasterPageFile="~/Site11.Master"
    AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="dotnetproject.ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Products</h2>
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
        <ItemTemplate>
            <div style="border:1px solid #ccc; padding:10px; margin:10px; width:200px; text-align:center;">
                <asp:ImageButton ID="ImageButton1" runat="server"
                    CommandArgument='<%# Eval("product_id") %>'
                    ImageUrl='<%# Eval("product_image") %>'
                    Height="150px" Width="150px"
                    OnCommand="ImageButton1_Command" />

                <br />
                <asp:Label ID="Label1" runat="server"
                    Text='<%# Eval("product_name") %>'
                    Font-Bold="true" Font-Size="Large"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server"
                    Text='<%# "Rs. " + Eval("product_price") %>'
                    Font-Bold="true" ForeColor="Green"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server"
                    Text='<%# Eval("product_description") %>'
                    ForeColor="Gray"></asp:Label>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

