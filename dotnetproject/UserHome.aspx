<%--<%@ Page Title="User Home" Language="C#" MasterPageFile="~/Site10.Master"
    AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="dotnetproject.UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Welcome to Your Home Page!</h2>
    <p>Select a category to explore products:</p>

    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td style="height: 98px">
                        <asp:ImageButton 
                            ID="ImageButton1" 
                            runat="server" 
                            CommandArgument='<%# Eval("category_id") %>' 
                            ImageUrl='<%# Eval("category_image") %>' 
                            Height="94px" Width="92px" 
                            OnCommand="ImageButton1_Command" />
                    </td>
                </tr>
                <tr>
                    <td style="height: 32px">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("category_name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="height: 32px">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("category_description") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>--%>
<%@ Page Title="User Home" Language="C#" MasterPageFile="~/Site10.Master"
    AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="dotnetproject.UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Welcome to Your Home Page!</h2>
    <p>Select a category to explore products:</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("category_id") %>' Height="76px" ImageUrl='<%# Eval("category_image") %>' OnCommand="ImageButton1_Command1" Width="89px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("category_name") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("category_description") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

    </asp:Content>

