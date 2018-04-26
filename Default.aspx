<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link href="Content/css/default.css" rel="stylesheet" />
    <hgroup class="title">
    </hgroup>
    <div class="content">
        <div id="laptop">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td id="Td1" runat="server">
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
                <EmptyDataTemplate>
                    <table id="Table1" runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td id="Td3" runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                
                <ItemTemplate>
                    <td id="Td4" runat="server">
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
                        <table id="Table2" runat="server">
                            <tr id="Tr2" runat="server">
                                <td id="Td5" runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr3" runat="server">
                                <td id="Td6" runat="server" style=""></td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 100%; text-align: center">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonCssClass="pager" ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonCssClass="pager" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [price], [description], [img], [sku] FROM [PRODUCT]"></asp:SqlDataSource>
        </div>
    </div>
    <div>
    </div>
</asp:Content>