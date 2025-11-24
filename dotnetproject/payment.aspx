<%@ Page Title="" Language="C#" MasterPageFile="~/Site15.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="dotnetproject.payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 style="text-align:center; color:#cc0000;">Payment Page</h2>

    <!-- Account Details Panel -->
    <asp:Panel ID="pnlAccount" runat="server" BorderWidth="1" BorderColor="#cccccc" Style="padding:15px; margin-bottom:20px;">
        <h3>Enter Account Details</h3>

        <table>
            <tr>
                <td>Account Number:</td>
                <td><asp:TextBox ID="txtAccountNumber" runat="server" OnTextChanged="txtAccountNumber_TextChanged"></asp:TextBox></td>
                <td><asp:Label ID="lblAccMsg" runat="server" Text="please enter your account number" ForeColor="Gray"></asp:Label></td>
            </tr>
            <tr>
                <td>Account Type:</td>
                <td>
                    <asp:DropDownList ID="ddlAccountType" runat="server">
                        <asp:ListItem Text="--Select Account Type--" Value=""></asp:ListItem>
                        <asp:ListItem Text="Savings" Value="Savings"></asp:ListItem>
                        <asp:ListItem Text="Current" Value="Current"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td><asp:Label ID="lblTypeMsg" runat="server" Text="please select account type" ForeColor="Gray"></asp:Label></td>
            </tr>
            <tr>
                <td>Balance Amount:</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
            </tr>
        </table>
    </asp:Panel>

    <!-- Payment Details Panel -->
    <asp:Panel ID="pnlPayment" runat="server" BorderWidth="1" BorderColor="#cccccc" Style="padding:15px;" Visible="False">
        <h3>Payment Details</h3>

        <table>
            <tr>
                <td>Payment Amount:</td>
                <td><asp:TextBox ID="txtPaymentAmount" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="lblAmtMsg" runat="server" Text="Please enter an amount" ForeColor="Gray"></asp:Label></td>
            </tr>
            <tr>
                <td>Payment Mode:</td>
                <td>
                    <asp:DropDownList ID="ddlPaymentMode" runat="server">
                        <asp:ListItem Text="UPI" Value="UPI"></asp:ListItem>
                        <asp:ListItem Text="Credit Card" Value="Credit Card"></asp:ListItem>
                        <asp:ListItem Text="Net Banking" Value="Net Banking"></asp:ListItem>
                        <asp:ListItem Text="Cash" Value="Cash"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnPay" runat="server" Text="Make Payment" OnClick="btnPay_Click" />
                    &nbsp;&nbsp;<asp:Label ID="lblPayStatus" runat="server" ForeColor="Green"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
