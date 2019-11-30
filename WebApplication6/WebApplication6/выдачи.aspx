<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="выдачи.aspx.cs" Inherits="WebApplication6.выдачи1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 956px;
            height: 533px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('image/Screen-Shot-2019-02-20-at-4.37.40-PM.png')"/>
        
            <asp:Label ID="Label1" runat="server" Text="код книги"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="дата выдачи"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="дата сдачи"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="читательский билет"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="добавить" />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_код_выдачи" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id_код_выдачи" HeaderText="№" InsertVisible="False" ReadOnly="True" SortExpression="id_код_выдачи" />
                    <asp:BoundField DataField="код_книги" HeaderText="код_книги" SortExpression="код_книги" />
                    <asp:BoundField DataField="дата_выдачи" HeaderText="дата_выдачи" SortExpression="дата_выдачи" />
                    <asp:BoundField DataField="дата_сдачи" HeaderText="дата_сдачи" SortExpression="дата_сдачи" />
                    <asp:BoundField DataField="читательский_билет" HeaderText="читательский_билет" SortExpression="читательский_билет" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:сеть_библиотекConnectionString %>" DeleteCommand="DELETE FROM [выдачи] WHERE [id_код_выдачи] = @id_код_выдачи" InsertCommand="INSERT INTO [выдачи] ([код_книги], [дата_выдачи], [дата_сдачи], [читательский_билет]) VALUES (@код_книги, @дата_выдачи, @дата_сдачи, @читательский_билет)" SelectCommand="SELECT * FROM [выдачи]" UpdateCommand="UPDATE [выдачи] SET [код_книги] = @код_книги, [дата_выдачи] = @дата_выдачи, [дата_сдачи] = @дата_сдачи, [читательский_билет] = @читательский_билет WHERE [id_код_выдачи] = @id_код_выдачи">
                <DeleteParameters>
                    <asp:Parameter Name="id_код_выдачи" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="код_книги" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="дата_выдачи" />
                    <asp:Parameter DbType="Date" Name="дата_сдачи" />
                    <asp:Parameter Name="читательский_билет" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="код_книги" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="дата_выдачи" />
                    <asp:Parameter DbType="Date" Name="дата_сдачи" />
                    <asp:Parameter Name="читательский_билет" Type="Int32" />
                    <asp:Parameter Name="id_код_выдачи" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="возврат" />
    </form>
</body>
</html>
