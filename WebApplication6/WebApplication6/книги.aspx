<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="книги.aspx.cs" Inherits="WebApplication6.книги1" %>

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
        <div class="auto-style1" style="background-image: url('image/Enjoying-the-beautiful-sun-with-a-nice-view-over-Malta-☀️-🇲🇹-How-do-you-spend-your-Sunday-@cliffhangerbranding-sundayfunday-1080x700.jpg')" />
            <asp:Label ID="Label1" runat="server" Text="название"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="код автора"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="год издания"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="количество страниц"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="обложка"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="добавить" />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_код_книги" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id_код_книги" HeaderText="№" InsertVisible="False" ReadOnly="True" SortExpression="id_код_книги" >
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="название" HeaderText="название" SortExpression="название" >
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="код_автора" HeaderText="код_автора" SortExpression="код_автора" >
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="год_издания" HeaderText="год_издания" SortExpression="год_издания" >
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="количество_страниц" HeaderText="количество_страниц" SortExpression="количество_страниц" >
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="обложка" HeaderText="обложка" SortExpression="обложка" >
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                    <HeaderStyle BackColor="White" BorderColor="White" />
                    <ItemStyle BackColor="White" BorderColor="White" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:сеть_библиотекConnectionString %>" DeleteCommand="DELETE FROM [книги] WHERE [id_код_книги] = @id_код_книги" InsertCommand="INSERT INTO [книги] ([название], [код_автора], [год_издания], [количество_страниц], [обложка]) VALUES (@название, @код_автора, @год_издания, @количество_страниц, @обложка)" SelectCommand="SELECT * FROM [книги]" UpdateCommand="UPDATE [книги] SET [название] = @название, [код_автора] = @код_автора, [год_издания] = @год_издания, [количество_страниц] = @количество_страниц, [обложка] = @обложка WHERE [id_код_книги] = @id_код_книги">
                <DeleteParameters>
                    <asp:Parameter Name="id_код_книги" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="название" Type="String" />
                    <asp:Parameter Name="код_автора" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="год_издания" />
                    <asp:Parameter Name="количество_страниц" Type="String" />
                    <asp:Parameter Name="обложка" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="название" Type="String" />
                    <asp:Parameter Name="код_автора" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="год_издания" />
                    <asp:Parameter Name="количество_страниц" Type="String" />
                    <asp:Parameter Name="обложка" Type="String" />
                    <asp:Parameter Name="id_код_книги" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="возврат" />
    </form>
</body>
</html>
