<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication6.Default" MasterPageFile="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 1000px;
            width: auto;
        }
        .auto-style2 {
            height: 125px;
            width: 358px;
            margin-top: 267px;
            margin-left: 444px;
        }
        .auto-style3 {
            width: 26px;
        }
        .auto-style4 {
            width: 284px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1" style="background-image: url('image/city.jpg')">
    
        &nbsp;<table class="auto-style2">
            <tr>
                <td class="auto-style3"><span style="font-size:14.0pt;line-height:115%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;color:white;mso-themecolor:background1;mso-ansi-language:RU;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Логин</span></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><span style="font-size:14.0pt;line-height:115%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;color:white;mso-themecolor:background1;mso-ansi-language:RU;
mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Пароль</span></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Вход" Width="103px" />
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
