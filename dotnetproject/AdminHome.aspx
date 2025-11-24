<%@ Page Title="Admin Home" Language="C#" MasterPageFile="~/Site5.Master"
    AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="dotnetproject.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .admin-title {
            font-size: 2.2rem;
            color: #ff7e5f;
            font-weight: bold;
            text-shadow: 1px 1px 2px #999;
            margin-bottom: 40px;
        }

        .admin-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 40px;
            justify-items: center;
            margin-top: 40px;
        }

        .admin-card {
            background: #fff;
            border-radius: 20px;
            padding: 25px;
            width: 220px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0,0,0,0.15);
            transition: transform 0.3s ease, box-shadow 0.3s ease, background 0.3s ease;
            cursor: pointer;
        }

        .admin-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            background: linear-gradient(135deg, #ff7e5f, #feb47b);
        }

        .admin-card:hover .card-title {
            color: #fff;
        }

        .admin-card img {
            width: 120px;
            height: 120px;
            margin-bottom: 15px;
            border-radius: 15px;
        }

        .card-title {
            font-size: 1.1rem;
            color: #444;
            font-weight: 600;
        }
    </style>

    <h1 class="admin-title">Welcome, Admin</h1>

    <div class="admin-grid">
        <div class="admin-card" onclick="location.href='AddCategory.aspx'">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" ImageAlign="Middle" ImageUrl="~/book.jpeg" OnClick="ImageButton1_Click" Width="150px" />
            <div class="card-title">Add Category</div>
        </div>

        <div class="admin-card" onclick="location.href='AddProduct.aspx'">
            <asp:ImageButton ID="ImageButton4" runat="server" Height="150px" ImageUrl="~/addproduct.jpeg" OnClick="ImageButton4_Click" Width="150px" />
            <div class="card-title">Add Product</div>
        </div>

        <div class="admin-card" onclick="location.href='EditCategory.aspx'">
            <asp:ImageButton ID="ImageButton2" runat="server" Height="150px" ImageAlign="Middle" ImageUrl="~/editcategory.jpeg" Width="150px" OnClick="ImageButton2_Click" />
            <div class="card-title">Edit Category</div>
        </div>

        <div class="admin-card" onclick="location.href='EditProduct.aspx'">
            <asp:ImageButton ID="ImageButton3" runat="server" Height="150px" ImageAlign="Middle" ImageUrl="~/editproduct.jpeg" Width="150px" OnClick="ImageButton3_Click" />
            <div class="card-title">Edit Product</div>
        </div>
    </div>
</asp:Content>

