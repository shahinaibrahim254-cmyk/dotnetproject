<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reply.aspx.cs" Inherits="dotnetproject.reply" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Send Email</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
      .email-form-container { max-width: 500px; margin: 40px auto; padding: 30px 28px; background: #fafdff; border-radius: 12px; box-shadow: 0 4px 20px rgba(40,43,53,0.10);}
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="email-form-container">
        <h3 class="text-center mb-4">Send Email</h3>
        <div class="form-group">
            <label for="txtTo">To</label>
            <asp:TextBox ID="txtTo" runat="server" CssClass="form-control" placeholder="Recipient email"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtFrom">From</label>
            <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control" placeholder="Your email"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtSubject">Subject</label>
            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Email subject"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtBody">Body</label>
            <asp:TextBox ID="txtBody" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="6" placeholder="Type your message"></asp:TextBox>
        </div>
        <asp:Button ID="btnSend" runat="server" CssClass="btn btn-primary btn-block" 
            Text="Send Email" OnClick="btnSend_Click" />
        <asp:Label ID="lblResult" runat="server" CssClass="d-block mt-3 text-center" />
      </div>
    </form>
</body>
</html>--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reply.aspx.cs" Inherits="dotnetproject.reply" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Send Email</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: linear-gradient(135deg, #ffebeb, #ffd6d6);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
            margin: 0;
            padding-top: 50px;
        }

        .email-form-container {
            max-width: 500px;
            margin: 0 auto;
            padding: 35px 30px;
            background: #ffffff;
            border-top: 5px solid #c40000;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(196, 0, 0, 0.2);
        }

        h3 {
            text-align: center;
            color: #c40000;
            font-weight: 600;
            margin-bottom: 25px;
        }

        label {
            font-weight: 600;
            color: #c40000;
        }

        .form-control {
            border: 1px solid #e0b4b4;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #c40000;
            box-shadow: 0 0 5px rgba(196, 0, 0, 0.3);
        }

        .btn-primary {
            background-color: #c40000;
            border-color: #c40000;
            border-radius: 8px;
            font-weight: bold;
        }

        .btn-primary:hover {
            background-color: #a30000;
            border-color: #a30000;
        }

        .lblResult {
            display: block;
            margin-top: 15px;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="email-form-container">
            <h3>Send Email</h3>
            <div class="form-group">
                <label for="txtTo">To</label>
                <asp:TextBox ID="txtTo" runat="server" CssClass="form-control" placeholder="Recipient email"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtFrom">From</label>
                <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control" placeholder="Your email"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtSubject">Subject</label>
                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Email subject"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtBody">Body</label>
                <asp:TextBox ID="txtBody" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="6" placeholder="Type your message"></asp:TextBox>
            </div>
            <asp:Button ID="btnSend" runat="server" CssClass="btn btn-primary btn-block"
                Text="Send Email" OnClick="btnSend_Click" />
            <asp:Label ID="lblResult" runat="server" CssClass="lblResult text-danger" Visible="False" />
        </div>
    </form>
</body>
</html>
