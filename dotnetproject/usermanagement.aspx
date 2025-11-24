<%@ Page Title="" Language="C#" MasterPageFile="~/Site17.Master" AutoEventWireup="true" CodeBehind="usermanagement.aspx.cs" Inherits="dotnetproject.usermanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 style="text-align:center; color:#cc0000;">User Management</h2>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridview"
        DataKeyNames="user_id"
        OnRowEditing="GridView1_RowEditing"
        OnRowCancelingEdit="GridView1_RowCancelingEdit"
        OnRowUpdating="GridView1_RowUpdating">

        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="User ID" ReadOnly="True" />
            <asp:BoundField DataField="user_name" HeaderText="Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="phone" HeaderText="Phone" />
            <asp:BoundField DataField="user_status" HeaderText="Status" />
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>active</asp:ListItem>
                        <asp:ListItem>inactive</asp:ListItem>
                    </asp:RadioButtonList>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>
