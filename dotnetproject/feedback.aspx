<%@ Page Title="" Language="C#" MasterPageFile="~/Site16.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="dotnetproject.feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 style="text-align:center; color:#cc0000;">We Value Your Feedback</h2>

    <asp:Panel ID="pnlFeedback" runat="server" BorderWidth="1" BorderColor="#cc0000" Style="padding:20px; width:60%; margin:auto; border-radius:10px;">
        <table style="width:100%;">
            <tr>
                <td style="width:25%; vertical-align:top; font-weight:bold;">Your Feedback:</td>
                <td>
                    <asp:TextBox ID="txtFeedback" runat="server" TextMode="MultiLine" Rows="5" Width="350px"
                        placeholder="Type your feedback here..." Style="border:1px solid #cc0000; border-radius:5px; padding:5px;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td style="padding-top:10px;">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="#cc0000" ForeColor="White" BorderColor="#cc0000" />
                    &nbsp;&nbsp;
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
