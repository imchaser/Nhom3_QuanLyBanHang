<%@ Page Title="Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link type="text/css" rel="stylesheet" href="Content/css/product.css">
    <hgroup class="title">
    </hgroup>
    <div class="content" style="">
        <div id="laptop">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" GroupItemCount="3" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <td runat="server">
                        <div class="sp">
                            <div class="imgsp">
                                <asp:Image ID="imgLabel" runat="server" ImageUrl='<%# Eval("img") %>' />
                            </div>
                            <div class="description">
                                <asp:Label ID="nameLabel" CssClass="tensp" runat="server" Text='<%# Eval("name") %>' />
                                <br />
                                <asp:Label ID="priceLabel" CssClass="gia" runat="server" Text='<%# Eval("price") %>' />
                                <asp:Label CssClass="gia" ID="skuLabel" runat="server" Text='<%# Eval("sku") %>' />
                                <br />
                                Mô tả:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <div class="btn">
                                    <asp:Button CssClass="button" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button CssClass="button" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </div>
                            </div>
                        </div>
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="">
                        <div class="editsp">
                            id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            product_category_id:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="product_category_idTextBox" runat="server" Text='<%# Bind("product_category_id") %>' />
                            <br />
                            sku:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="skuTextBox" runat="server" Text='<%# Bind("sku") %>' />
                            <br />
                            name:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            price:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                            <br />
                            description:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                            <br />
                            img:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
                            <br />
                            <div style="text-align: center">
                                <asp:Button CssClass="button2" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button CssClass="button2" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </div>
                            <br />
                        </div>
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <tr id="Tr1" class="insert-tr" runat="server" style="">
                        <td>product_category_id:
                    <asp:DropDownList ID="DropDownList1" runat="server"
                        DataSourceID="SqlDataSource2"
                        DataTextField="id"
                        DataValueField='<%# Bind("product_category_id") %>'>
                    </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id] FROM [PRODUCT_CATEGORY] ORDER BY [id]"></asp:SqlDataSource>
                        </td>
                        <td>price:
                    <asp:TextBox CssClass="iserttf" ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                        </td>
                        <td>name:
                    <asp:TextBox CssClass="iserttf" ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' /><br />

                        </td>
                    </tr>
                    <tr class="insert-tr">
                        <td>sku:
                    <asp:TextBox CssClass="iserttf" ID="TextBox2" runat="server" Text='<%# Bind("sku") %>' />
                        </td>
                        <td>description:
                    <asp:TextBox CssClass="iserttf" ID="TextBox4" runat="server" Text='<%# Bind("description") %>' />
                        </td>
                        <td>img:
                    <asp:TextBox CssClass="iserttf" ID="TextBox6" runat="server" Text='<%# Bind("img") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button CssClass="button2" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button CssClass="button2" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" /></td>
                    </tr>
                </InsertItemTemplate>

                <ItemTemplate>
                    <td runat="server">
                        <div class="sp">
                            <div class="imgsp">
                                <asp:Image ID="imgLabel" runat="server" ImageUrl='<%# Eval("img") %>' />
                            </div>
                            <div class="description">
                                <asp:Label CssClass="tensp" ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                <br />
                                <asp:Label ID="priceLabel" CssClass="gia" runat="server" Text='<%# Eval("price") %>' />
                                <asp:Label CssClass="gia" ID="skuLabel" runat="server" Text='<%# Eval("sku") %>' />
                                <br />
                                Mô tả:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <div class="btn">
                                    <asp:Button CssClass="button" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button CssClass="button" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </div>
                            </div>
                        </div>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <div>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 100%; text-align: center">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonCssClass="pager" ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonCssClass="pager" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="">id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        product_category_id:
                    <asp:Label ID="product_category_idLabel" runat="server" Text='<%# Eval("product_category_id") %>' />
                        <br />
                        sku:
                    <asp:Label ID="skuLabel" runat="server" Text='<%# Eval("sku") %>' />
                        <br />
                        name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                        price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        <br />
                        img:
                    <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                        <br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [PRODUCT] WHERE [id] = @id" InsertCommand="INSERT INTO [PRODUCT] ([product_category_id], [sku], [name], [price], [description], [img]) VALUES (@product_category_id, @sku, @name, @price, @description, @img)" SelectCommand="SELECT [id], [product_category_id], [sku], [name], [price], [description], [img] FROM [PRODUCT] ORDER BY [product_category_id]" UpdateCommand="UPDATE [PRODUCT] SET [product_category_id] = @product_category_id, [sku] = @sku, [name] = @name, [price] = @price, [description] = @description, [img] = @img WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="product_category_id" Type="Int32" />
                    <asp:Parameter Name="sku" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="product_category_id" Type="Int32" />
                    <asp:Parameter Name="sku" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>

    <div>
    </div>
</asp:Content>
