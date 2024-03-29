﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAdminBookEdit.aspx.cs" Inherits="PRN292_Project.frmAdminBookEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" runat="server" media="screen" href="/CSS/Style.css" />
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
            <br />
            <br />
            &nbsp;<asp:Label ID="Label11" runat="server" Text="Book ID"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblBookID" runat="server"></asp:Label>
            &nbsp;&nbsp;
        <br />
            <br />
            &nbsp;&nbsp;&nbsp;
        <br />
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Edit Book Detail"></asp:Label>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridViewBookDetail" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical" PageSize="3" Width="698px" OnRowUpdating="GridViewBookDetail_RowUpdating" OnRowEditing="GridViewBookDetail_RowEditing">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="BookID" HeaderText="ID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Summary" HeaderText="Summary" />
                    <asp:BoundField DataField="Author" HeaderText="Author" />
                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" ButtonType="Button" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Edit Category"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Delete Category"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Text="Book Category"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridViewBookCategory" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" EnableModelValidation="True" ForeColor="Black" GridLines="None" PageSize="3" Width="697px" OnRowDeleting="GridViewBookCategory_RowDeleting" OnPageIndexChanging="GridViewBookCategory_PageIndexChanging">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="BookID" HeaderText="Book ID" />
                    <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" />
                    <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            </asp:GridView>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Add Category"></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Text="List Category"></asp:Label>
            <asp:GridView ID="GridViewCategoryList" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" PageSize="3" Width="700px" DataKeyNames="CategoryID" OnPageIndexChanging="GridViewCategoryList_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" />
                    <asp:BoundField DataField="CategoryName" HeaderText="Category" />
                    <asp:TemplateField HeaderText="Add Category">
                        <ItemTemplate>
                            <asp:Button ID="btnAddCategory" runat="server" OnClick="btnAddCategory_Click" Text="Add" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:GridView>
            <!--#include file="footer.html" -->
        </div>
    </form>
</body>
</html>
