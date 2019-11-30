<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="читатели.aspx.cs" Inherits="WebApplication6.читатели" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1500px;
            height: auto;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('image/Why-People-are-Choosing-Digital-Marketing-Companies-Over-Freelancers-1080x700.jpg')" />
            <asp:Label ID="Label1" runat="server" Text="ФИО"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="адрес"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="телефон"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="код города"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="user id"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Фото"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="добавить" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_читательский_билет" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id_читательский_билет" HeaderText="№" InsertVisible="False" ReadOnly="True" SortExpression="id_читательский_билет">
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ФИО" HeaderText="ФИО" SortExpression="ФИО">
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="адрес" HeaderText="адрес" SortExpression="адрес">
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="телефон" HeaderText="телефон" SortExpression="телефон">
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="код_города" HeaderText="код_города" SortExpression="код_города">
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="фото" HeaderText="фото" SortExpression="фото">
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId">
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:сеть_библиотекConnectionString %>" DeleteCommand="DELETE FROM [читатели] WHERE [id_читательский_билет] = @id_читательский_билет" InsertCommand="INSERT INTO [читатели] ([ФИО], [адрес], [телефон], [код_города], [фото], [UserId]) VALUES (@ФИО, @адрес, @телефон, @код_города, @фото, @UserId)" SelectCommand="SELECT * FROM [читатели]" UpdateCommand="UPDATE [читатели] SET [ФИО] = @ФИО, [адрес] = @адрес, [телефон] = @телефон, [код_города] = @код_города, [фото] = @фото, [UserId] = @UserId WHERE [id_читательский_билет] = @id_читательский_билет">
                <DeleteParameters>
                    <asp:Parameter Name="id_читательский_билет" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ФИО" Type="String" />
                    <asp:Parameter Name="адрес" Type="String" />
                    <asp:Parameter Name="телефон" Type="String" />
                    <asp:Parameter Name="код_города" Type="Int32" />
                    <asp:Parameter Name="фото" Type="String" />
                    <asp:Parameter Name="UserId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ФИО" Type="String" />
                    <asp:Parameter Name="адрес" Type="String" />
                    <asp:Parameter Name="телефон" Type="String" />
                    <asp:Parameter Name="код_города" Type="Int32" />
                    <asp:Parameter Name="фото" Type="String" />
                    <asp:Parameter Name="UserId" Type="Int32" />
                    <asp:Parameter Name="id_читательский_билет" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="возврат" />
            </form>
</body>
</html>
