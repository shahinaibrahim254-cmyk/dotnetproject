<%--<%@ Page Title="View Bill" Language="C#" MasterPageFile="~/Site14.Master"
    AutoEventWireup="true" CodeBehind="ViewBill.aspx.cs" Inherits="dotnetproject.ViewBill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2 style="text-align:center;color:#b71c1c;">Customer Details</h2>
    <div style="width:60%;margin:0 auto;background:#fff3f3;padding:20px;border-radius:12px;box-shadow:0 2px 8px rgba(0,0,0,0.1);">
        <p><strong>Name:</strong> <asp:Label ID="lblName" runat="server" /></p>
        <p><strong>Email:</strong> <asp:Label ID="lblEmail" runat="server" /></p>
        <p><strong>Address:</strong> <asp:Label ID="lblAddress" runat="server" /></p>
        <p><strong>Phone:</strong> <asp:Label ID="lblPhone" runat="server" /></p>
    </div>

    <hr style="margin:30px 0;" />

    <h2 style="text-align:center;color:#b71c1c;">Bill Details</h2>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        CellPadding="8" GridLines="None" Width="80%" 
        HeaderStyle-BackColor="#d32f2f" HeaderStyle-ForeColor="White"
        RowStyle-BackColor="#fdf2f2" AlternatingRowStyle-BackColor="#ffffff"
        BorderColor="#ccc" BorderWidth="1px" style="margin: 0 auto;">
        <Columns>
            <asp:BoundField DataField="product_name" HeaderText="Product" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="product_price" HeaderText="Price" DataFormatString="{0:C}" />
            <asp:BoundField DataField="subtotal" HeaderText="Subtotal" DataFormatString="{0:C}" />
        </Columns>
    </asp:GridView>

    <br />
    <asp:Label ID="lblTotal" runat="server" 
        Font-Bold="true" Font-Size="Large" ForeColor="#b71c1c"></asp:Label>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</asp:Content>--%>
<%@ Page Title="View Bill" Language="C#" MasterPageFile="~/Site14.Master"
    AutoEventWireup="true" CodeBehind="ViewBill.aspx.cs" Inherits="dotnetproject.ViewBill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2 style="text-align:center;color:#b71c1c;">Customer Details</h2>
    <div style="width:60%;margin:0 auto;background:#fff3f3;padding:20px;border-radius:12px;box-shadow:0 2px 8px rgba(0,0,0,0.1);">
        <p><strong>Name:</strong> <asp:Label ID="lblName" runat="server" /></p>
        <p><strong>Email:</strong> <asp:Label ID="lblEmail" runat="server" /></p>
        <p><strong>Address:</strong> <asp:Label ID="lblAddress" runat="server" /></p>
        <p><strong>Phone:</strong> <asp:Label ID="lblPhone" runat="server" /></p>
    </div>

    <hr style="margin:30px 0;" />

    <h2 style="text-align:center;color:#b71c1c;">Bill Details</h2>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        CellPadding="8" GridLines="None" Width="80%" 
        HeaderStyle-BackColor="#d32f2f" HeaderStyle-ForeColor="White"
        RowStyle-BackColor="#fdf2f2" AlternatingRowStyle-BackColor="#ffffff"
        BorderColor="#ccc" BorderWidth="1px" style="margin: 0 auto;">
        <Columns>
            <asp:BoundField DataField="product_name" HeaderText="Product" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="product_price" HeaderText="Price" DataFormatString="{0:C}" />
            <asp:BoundField DataField="subtotal" HeaderText="Subtotal" DataFormatString="{0:C}" />
        </Columns>
    </asp:GridView>

    <br />

    <div style="text-align:center; margin-top:20px;">
        <span style="font-size:large; font-weight:bold; color:#b71c1c;">Total Rupees: </span>
        <asp:Label ID="lblTotal" runat="server" 
            Font-Bold="true" Font-Size="Large" ForeColor="#b71c1c"></asp:Label>
    </div>

    <div style="text-align:center; margin-top:25px;">
        <asp:Button ID="Button1" runat="server" Text="Pay"
            OnClick="Button1_Click"
            style="background-color:#d32f2f;color:white;font-weight:bold;
                   border:none;padding:10px 30px;border-radius:8px;
                   box-shadow:0 3px 8px rgba(0,0,0,0.2);cursor:pointer;" />
    </div>

</asp:Content>

