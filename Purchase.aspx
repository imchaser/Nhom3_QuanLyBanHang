<%@ Page Title="Purchase" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="Purchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link type="text/css" rel="stylesheet" href="Content/css/purchase.css">
    <hgroup class="title">
        <h2>Quản lý hóa đơn</h2>
    </hgroup>
    <hr />
    <div style="width:100%;text-align:center">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button CssClass="button" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button CssClass="button" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td class="mid">
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td >
                        <asp:Label ID="purchase_noLabel" runat="server" Text='<%# Eval("purchase_no") %>' />
                    </td>
                    <td>
                        <asp:Label ID="client_idLabel" runat="server" Text='<%# Eval("client_id") %>' />
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
                        <asp:TextBox ID="purchase_noTextBox" runat="server" Text='<%# Bind("purchase_no") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="client_idTextBox" runat="server" Text='<%# Bind("client_id") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table id="Table1" runat="server" style="">
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
                        <asp:TextBox ID="purchase_noTextBox" runat="server" Text='<%# Bind("purchase_no") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="client_idTextBox" runat="server" Text='<%# Bind("client_id") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button CssClass="button" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button CssClass="button" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td class="mid">
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="purchase_noLabel" runat="server" Text='<%# Eval("purchase_no") %>' />
                    </td>
                    <td>
                        <asp:Label ID="client_idLabel" runat="server" Text='<%# Eval("client_id") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table id="Table2" runat="server">
                    <tr id="Tr1" runat="server">
                        <td id="Td1" runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="Tr2" runat="server" style="">
                                    <th id="Th1" runat="server"></th>
                                    <th id="Th2" runat="server">STT</th>
                                    <th id="Th3" runat="server">Mã hóa đơn</th>
                                    <th id="Th4" runat="server">Mã khách hàng</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <div style="text-align:center">
                            <asp:DataPager ID="DataPager2" runat="server" PageSize="5">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonCssClass="pager" ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button CssClass="button"  ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button CssClass="button" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="purchase_noLabel" runat="server" Text='<%# Eval("purchase_no") %>' />
                    </td>
                    <td>
                        <asp:Label ID="client_idLabel" runat="server" Text='<%# Eval("client_id") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [PURCHASE] WHERE [id] = @id" InsertCommand="INSERT INTO [PURCHASE] ([purchase_no], [client_id]) VALUES (@purchase_no, @client_id)" SelectCommand="SELECT [id], [purchase_no], [client_id] FROM [PURCHASE]" UpdateCommand="UPDATE [PURCHASE] SET [purchase_no] = @purchase_no, [client_id] = @client_id WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="purchase_no" Type="String" />
                <asp:Parameter Name="client_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="purchase_no" Type="String" />
                <asp:Parameter Name="client_id" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

