<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedbackview.aspx.cs" Inherits="dotnetproject.feedbackview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="feedback_id">
                        <Columns>
                            <asp:BoundField DataField="user_name" HeaderText="User Name" />
                            <asp:BoundField DataField="receiver_message" HeaderText="Receiver Message" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("feedback_id") %>' OnCommand="LinkButton1_Command">LinkButton</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedbackview.aspx.cs" Inherits="dotnetproject.feedbackview" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback View</title>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #fff0f0;
            margin: 0;
            padding: 0;
        }
        h2 {
            text-align: center;
            color: white;
            background-color: #c40000;
            padding: 12px;
            border-radius: 6px;
            margin: 20px auto;
            width: 50%;
        }
        .table-container {
            width: 80%;
            margin: 0 auto;
        }
        .auto-style1 {
            width: 100%;
            border-collapse: collapse;
        }
        .auto-style1 th {
            background-color: #c40000;
            color: white;
            padding: 10px;
        }
        .auto-style1 td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }
        .auto-style1 tr:hover {
            background-color: #fceaea;
        }
        .reply-button {
            color: #c40000;
            font-weight: bold;
            text-decoration: none;
        }
        .reply-button:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Feedback View</h2>
        <div class="table-container">
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1"
                AutoGenerateColumns="False" DataKeyNames="feedback_id" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="user_name" HeaderText="User Name" />
                    <asp:BoundField DataField="receiver_message" HeaderText="Receiver Message" />
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"
                                CommandArgument='<%# Eval("feedback_id") %>'
                                CssClass="reply-button"
                                OnCommand="LinkButton1_Command">
                                Reply
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>

