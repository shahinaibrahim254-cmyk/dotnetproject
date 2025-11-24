<%--<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site12.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="dotnetproject.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="product-card" style="display:flex; gap:50px; justify-content:center; align-items:flex-start; flex-wrap:wrap;">
        <!-- Product Image -->
        <div class="product-image-container" style="flex:1; min-width:300px; text-align:center;">
            <asp:Image ID="imgProduct" runat="server" CssClass="product-image" />
        </div>
        <div class="product-details" style="flex:1; min-width:300px;">
            <h2 style="color:#ff7e5f;">&nbsp;
                <asp:Label ID="lblProductName" runat="server" Text="Product Name"></asp:Label>
                &nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </h2>
            <p class="description" style="font-size:16px; line-height:1.5; color:#333;">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="134px" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </p>
            <p class="price" style="font-size:28px; font-weight:bold; margin:20px 0; color:#e85a4f;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                $<asp:Label ID="lblPrice" runat="server" Text="0.00"></asp:Label>
            </p>

            <!-- Quantity Selector -->
            <div style="margin-bottom:20px;">
                <label style="font-weight:500;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity:</label>
                <asp:TextBox ID="txtQuantity" runat="server" Text="1" Width="50px" CssClass="quantity-box"></asp:TextBox>
                <asp:Button ID="btnDecrease" runat="server" Text="-" CssClass="quantity-btn" />
                <asp:Button ID="btnIncrease" runat="server" Text="+" CssClass="quantity-btn" />
            </div>

            <!-- Buttons -->
            <div>
                <asp:Button ID="btnAddCart" runat="server" CssClass="btn" Text="Add to Cart" />
            </div>
        </div>
    </div>

    <style>
        .product-image { max-width: 100%; border-radius: 12px; box-shadow: 0 8px 20px rgba(0,0,0,0.15); transition: transform 0.3s ease; }
        .product-image:hover { transform: scale(1.05); }

        .btn { padding: 10px 25px; border-radius: 8px; border: none; background: #ff7e5f; color: #fff; font-weight: bold; cursor: pointer; transition: background 0.3s ease, transform 0.2s ease; margin-right: 10px; }
        .btn:hover { background: #feb47b; transform: scale(1.05); }

        .quantity-box { text-align: center; border-radius: 5px; border: 1px solid #ccc; padding: 5px; }
        .quantity-btn { padding: 5px 12px; margin-left: 5px; border-radius: 5px; background: #ff7e5f; color: #fff; border: none; cursor: pointer; transition: background 0.3s ease; }
        .quantity-btn:hover { background: #feb47b; }
    </style>
</asp:Content>--%>
<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site12.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="dotnetproject.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 80%; margin: 30px auto; display: flex; gap: 50px; flex-wrap: wrap; background: #fff; padding: 30px; border-radius: 12px; box-shadow: 0 4px 12px rgba(0,0,0,0.1);">

        <!-- Product Image -->
        <div style="flex: 1; min-width: 300px; text-align: center;">
            <asp:Image ID="imgProduct" runat="server" Width="300px" Height="300px" />
        </div>

        <!-- Product Details -->
        <div style="flex: 1; min-width: 300px;">
            <h2><asp:Label ID="lblName" runat="server" Text="Product Name"></asp:Label></h2>
            <p><asp:Label ID="lblDescription" runat="server" Text="Product Description"></asp:Label></p>
            <p style="font-size:24px; font-weight:bold; color:#d32f2f;">
                ₹ <asp:Label ID="lblPrice" runat="server" Text="0.00"></asp:Label>
            </p>

            <!-- Quantity Selector -->
            <div style="margin:20px 0;">
                <asp:Button ID="btnDecrease" runat="server" Text="-" Style="width:35px; height:35px; font-size:18px; margin-right:5px;" OnClick="btnDecrease_Click" />
                <asp:TextBox ID="txtQuantity" runat="server" Text="1" Width="50px" Style="text-align:center; font-size:16px;" AutoPostBack="True" OnTextChanged="txtQuantity_TextChanged"></asp:TextBox>
                <asp:Button ID="btnIncrease" runat="server" Text="+" Style="width:35px; height:35px; font-size:18px; margin-left:5px;" OnClick="btnIncrease_Click" />
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>

            <!-- Action Buttons -->
            <div style="margin-top:20px;">
                <asp:Button ID="btnAddCart" runat="server" Text="Add To Cart"
                    Style="background:#1e88e5; color:#fff; padding:12px 25px; border:none; border-radius:6px; margin-right:12px; font-weight:bold;" OnClick="btnAddCart_Click" />

                <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping"
                    Style="background:#f57c00; color:#fff; padding:12px 25px; border:none; border-radius:6px; font-weight:bold;" OnClick="btnContinue_Click" />
            </div>
        </div>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    </div>
</asp:Content>

