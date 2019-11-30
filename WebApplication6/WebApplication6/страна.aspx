<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="страна.aspx.cs" Inherits="WebApplication6.страна1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1602px;
            height: 741px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('image/0093.jpg')">

            <asp:Label ID="Label1" runat="server" BackColor="White" Font-Size="Large" Height="24px" Text="Страна" Width="69px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="157px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Height="28px" Text="добавить" Width="81px" />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_страна" DataSourceID="SqlDataSource1" Height="155px" Width="229px">
                <Columns>
                    <asp:BoundField DataField="id_страна" HeaderText="№" InsertVisible="False" ReadOnly="True" SortExpression="id_страна">
                    <ControlStyle BackColor="White" BorderColor="White" Font-Names="Times New Roman" ForeColor="White" />
                    <FooterStyle BackColor="White" BorderColor="White" />
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="Black" />
                    </asp:BoundField>
                    <asp:BoundField DataField="страна" HeaderText="страна" SortExpression="страна">
                    <ControlStyle BackColor="White" BorderColor="White" />
                    <FooterStyle BackColor="White" BorderColor="White" />
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="Black" />
                    </asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                    <ControlStyle BackColor="White" BorderColor="White" />
                    <FooterStyle BackColor="White" BorderColor="White" />
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="Black" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:сеть_библиотекConnectionString %>" DeleteCommand="DELETE FROM [страна] WHERE [id_страна] = @id_страна" InsertCommand="INSERT INTO [страна] ([страна]) VALUES (@страна)" SelectCommand="SELECT * FROM [страна]" UpdateCommand="UPDATE [страна] SET [страна] = @страна WHERE [id_страна] = @id_страна">
                <DeleteParameters>
                    <asp:Parameter Name="id_страна" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="страна" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="страна" Type="String" />
                    <asp:Parameter Name="id_страна" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="возврат" />

        </div></form>
</body>
</html>
