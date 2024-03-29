﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmUserBook.aspx.cs" Inherits="PRN292_Project.frmUserBook" %>

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
                    <h1>Typemoon</h1>
                    <span>Welcome to this website</span>

                </div>
                <div class="menu">
                    <a class="active" href="frmUserHome.aspx">Home</a>
                    <a href="frmUserCategoryList.aspx">Category</a>
                    <div class="float-right">
                        <asp:Label ID="lblUsername" runat="server" CssClass="username"></asp:Label>
                        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Log out" CssClass="button-logout" />
                    </div>
                </div>
                <div class="body-content">
                    <asp:Label ID="Label1" runat="server" Text="Load Title vào đây"></asp:Label>
                    <br />
                    <table style="width: 100%;" class="table">
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Author"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblAuthor" runat="server" Text="Load Author vào đây"></asp:Label>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Summary"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblSummary" runat="server" Text="Load Summary vào đây"></asp:Label>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Average Score"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblScore" runat="server" Text="Load vote score trung bình vào đây"></asp:Label>
                            </td>

                        </tr>
                        <tr>
                            <td>Category</td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                            </td>

                        </tr>
                    </table>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Vote"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Not Vote</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnVote" runat="server" OnClick="btnVote_Click" Text="Vote" />
                    <br />
                    <br />
                    <br />
                    <h1>Chapter</h1>
                    <asp:GridView ID="GridViewChapter" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" CssClass="gridview" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ChapterID" HeaderText="ID" />
                            <asp:BoundField DataField="Title" HeaderText="Title" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnRead" runat="server" Text="Read" OnClick="btnRead_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    </asp:GridView>
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Comment" Font-Bold="True"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="141px" TextMode="MultiLine" Width="570px"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnAddComment" runat="server" OnClick="btnAddComment_Click" Text="Add Comment" />
                    <br />
                    <br />
                    <asp:GridView ID="GridViewComment" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" Width="728px" AllowPaging="True" OnPageIndexChanging="GridViewComment_PageIndexChanging" OnRowCancelingEdit="GridViewComment_RowCancelingEdit" OnRowDeleting="GridViewComment_RowDeleting" OnRowEditing="GridViewComment_RowEditing" OnRowUpdating="GridViewComment_RowUpdating" PageSize="4" OnRowDataBound="GridViewComment_RowDataBound" CssClass="gridview" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                        <Columns>
                            <asp:BoundField DataField="CommentID" HeaderText="ID" ReadOnly="True" />
                            <asp:BoundField DataField="UserID" HeaderText="User" ReadOnly="True" />
                            <asp:BoundField DataField="Content" HeaderText="Content" />
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </div>
                <!--#include file="footer.html" -->
            </div>
    </form>
</body>
</html>
