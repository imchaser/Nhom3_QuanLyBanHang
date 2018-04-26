<%@ Page Title="Category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link type="text/css" rel="stylesheet" href="Content/css/category.css">
    <hgroup class="title">
        <h2>Quản lý danh mục</h2>
    </hgroup>
    <hr />
    <div style="width:100%;text-align:center">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr>
                    <td>
                        <asp:Button CssClass="button" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button CssClass="button" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td class="mid" >
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="parent_category_idLabel" runat="server" Text='<%# Eval("parent_category_id") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button CssClass="button" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button CssClass="button" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="parent_category_idTextBox" runat="server" Text='<%# Bind("parent_category_id") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button CssClass="button" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button CssClass="button" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="parent_category_idTextBox" runat="server" Text='<%# Bind("parent_category_id") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button CssClass="button" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button CssClass="button" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td class="mid">
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="parent_category_idLabel" runat="server" Text='<%# Eval("parent_category_id") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <div style="height:380px">
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">Mã danh mục</th>
                                    <th runat="server">Tên danh mục</th>
                                    <th runat="server">Danh mục cha</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>                      
                </table>
                    </div>
                <div style="text-align:center">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonCssClass="pager" ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button CssClass="button" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button CssClass="button" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="parent_category_idLabel" runat="server" Text='<%# Eval("parent_category_id") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [PRODUCT_CATEGORY] WHERE [id] = @id" InsertCommand="INSERT INTO [PRODUCT_CATEGORY] ([name], [parent_category_id]) VALUES (@name, @parent_category_id)" SelectCommand="SELECT [id], [name], [parent_category_id] FROM [PRODUCT_CATEGORY]" UpdateCommand="UPDATE [PRODUCT_CATEGORY] SET [name] = @name, [parent_category_id] = @parent_category_id WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="parent_category_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="parent_category_id" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
