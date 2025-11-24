<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="view" %>

<!DOCTYPE html>
<script runat="server">

 
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GridView Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" >
            <Columns>
                <asp:BoundField DataField="user_name" HeaderText="User Name" />
                <asp:BoundField DataField="receiver_message" HeaderText="Receiver Message" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
