﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAdminChapter.aspx.cs" Inherits="PRN292_Project.frmAdminChapter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" runat="server" media="screen" href="/CSS/Style.css" />
    <style type="text/css">
        .auto-style1 {
            width: 101px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="wrap">
                <div class="header">
                    <h1>Admin Page</h1>

                </div>
                <div class="menu">
                    <a class="active" href="frmAdminBook.aspx">Home</a>
                    <a href="frmAdminBookAdd.aspx">Add Book</a>
                    <div class="float-right">
                        <asp:Label ID="lblUsername" runat="server" CssClass="username"></asp:Label>
                        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Log out" CssClass="button-logout" />
                    </div>
                </div>
        <asp:Label ID="lblTitle" runat="server" Text="Load Title vào đây"></asp:Label>
        <br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="BookID"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblBookID" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Author"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAuthor" runat="server" Text="Load Author vào đây"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Summary"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblSummary" runat="server" Text="Load Summary vào đây"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
       

        <asp:GridView CssClass="gridview" ID="GridViewListChapter" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" PageSize="5" OnPageIndexChanging="GridViewListChapter_PageIndexChanging" >

            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ChapterID" HeaderText="ID" />
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <%--<asp:CommandField HeaderText="Delete" ShowDeleteButton="True" ButtonType="Button" />--%>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Button ID="btnDel" runat="server" OnClick="btnDel_Click" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Edit" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
    
        <br />
        <asp:Button ID="btnAddChapter" runat="server" OnClick="btnAddChapter_Click" Text="Add Chapter" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Back" runat="server" OnClick="Back_Click" Text="Back to Home Page" />
        <br />
    <!--#include file="footer.html" -->
    </div>
    </form>
</body>
</html>
