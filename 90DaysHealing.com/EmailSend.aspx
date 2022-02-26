<%@ page language="C#" AutoEventWireup="true" CodeFile="EmailSend.aspx.cs" Inherits="EmailSend" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("[id*=btnSend]").click(function () {
                var name = $.trim($("[id*=name]").val());
                var email = $.trim($("[id*=email]").val());
                var phone = $.trim($("[id*=phone]").val());
                var address = $.trim($("[id*=address]").val());
                $.ajax({
                    type: "POST",
                    url: "EmailSend.aspx/SendEmail",
                    data: "{ name: '" + name + "', email: '" + email + "', phone: '" + phone + "', address: '" + address + "' }",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (r) {
                        alert(r.d);
                    },
                    error: function (r) {
                        alert(r.responseText);
                    },
                    failure: function (r) {
                        alert(r.responseText);
                    }
                });
                return false;
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1"
            EnablePageMethods="true"
            EnablePartialRendering="true" runat="server" />
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="name" runat="server" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="email" runat="server" /></td>
            </tr>
             <tr>
                <td>Phone:</td>
                <td>
                    <asp:TextBox ID="phone" runat="server" /></td>
            </tr>
            <tr>
                <td valign="top">Address:</td>
                <td>
                    <asp:TextBox ID="address" runat="server" TextMode="MultiLine" Height="150" Width="200" /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSend" runat="server" Text="Send" /></td>
            </tr>
        </table>
    </form>
</body>
</html>

