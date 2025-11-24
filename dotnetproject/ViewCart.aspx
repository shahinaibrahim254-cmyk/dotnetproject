<%@ Page Title="View Cart" Language="C#" MasterPageFile="~/Site13.Master"
    AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="dotnetproject.ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .cart-title {
            text-align: center;
            color: #ff7e5f;
            margin-bottom: 25px;
            font-size: 2rem;
        }

        .cart-table {
            margin: 0 auto;
            width: 90%;
            border-collapse: collapse;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        .cart-table th {
            background: #ff7e5f;
            color: #fff;
            padding: 14px;
            text-align: center;
            font-size: 1.1rem;
        }

        .cart-table td {
            background: #fff;
            padding: 15px;
            text-align: center;
            vertical-align: middle;
            font-size: 1rem;
        }

        .cart-image {
            height: 90px;
            width: 90px;
            object-fit: cover;
            border-radius: 10px;
        }

        .summary-box {
            margin: 40px auto 0;
            background: #fff;
            padding: 30px 35px;
            width: 60%;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 6px 15px rgba(0,0,0,0.15);
        }

        .confirm-btn {
            background: #ff7e5f;
            border: none;
            color: #fff;
            padding: 12px 30px;
            font-size: 1rem;
            border-radius: 8px;
            cursor: pointer;
            margin-left: 25px;
        }
    </style>

    <h2 class="cart-title">🛒 Your Shopping Cart</h2>

    <asp:GridView ID="GridView1" runat="server" CssClass="cart-table"
        AutoGenerateColumns="False" DataKeyNames="cart_id"
        GridLines="None"
        OnRowCancelingEdit="GridView1_RowCancelingEdit"
        OnRowDeleting="GridView1_RowDeleting"
        OnRowEditing="GridView1_RowEditing"
        OnRowUpdating="GridView1_RowUpdating">

        <Columns>

            <asp:BoundField DataField="product_name" HeaderText="Product Name" />
            <asp:BoundField DataField="product_price" HeaderText="Price (₹)" />

            <asp:ImageField DataImageUrlField="product_image" HeaderText="Product Image">
                <ControlStyle CssClass="cart-image" />
            </asp:ImageField>

            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="subtotal" HeaderText="Subtotal (₹)" />

            <asp:CommandField ShowEditButton="True" HeaderText="Edit" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />

        </Columns>
    </asp:GridView>

    <div class="summary-box">
        <asp:Label ID="Label1" runat="server" Text="Grand Total:" Font-Bold="true"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text=" ₹ " Font-Bold="true"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="0.00" Font-Bold="true"></asp:Label>

        <br /><br />

        <asp:Button ID="Button1" runat="server" CssClass="confirm-btn"
            Text="✅ Confirm Booking" OnClick="Button1_Click" />

        <br /><br />
        <asp:Label ID="Label4" runat="server" ForeColor="#28a745"></asp:Label>

    </div>

</asp:Content>
