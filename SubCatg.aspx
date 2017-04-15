<%@ Page Title="Sub Category" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SubCatg.aspx.cs" Inherits="SubCatg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
            border-style: solid;
            border-width: 5px;
        }
        .auto-style6 {
            width: 140px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="6" class="auto-style5">
        <tr>
            <td class="auto-style6">Select Category</td>
            <td style="text-align: left">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CatgName" DataValueField="CatgId" style="text-align: left">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EShoppingDBConnectionString2 %>" SelectCommand="SELECT [CatgName], [CatgId], [CatgDesc] FROM [CatgTable]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Enter SubCategory</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox1" runat="server" Width="192px" style="text-align: left"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Destcroption</td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox2" runat="server" Height="48px" TextMode="MultiLine" Width="406px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add SubCatg" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="SubCatgId" DataSourceID="SqlDataSource1" ForeColor="Black" Height="434px" Width="408px">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="CatgId" HeaderText="CatgId" SortExpression="CatgId" />
                        <asp:BoundField DataField="SubCatgId" HeaderText="SubCatgId" SortExpression="SubCatgId" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="SubCatgName" HeaderText="SubCatgName" SortExpression="SubCatgName" />
                        <asp:BoundField DataField="SubCatgDesc" HeaderText="SubCatgDesc" SortExpression="SubCatgDesc" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EShoppingDBConnectionString2 %>" SelectCommand="SELECT [CatgId], [SubCatgId], [SubCatgName], [SubCatgDesc] FROM [SubCatgTable]" DeleteCommand="DELETE FROM [SubCatgTable] WHERE [SubCatgId] = @SubCatgId" InsertCommand="INSERT INTO [SubCatgTable] ([CatgId], [SubCatgName], [SubCatgDesc]) VALUES (@CatgId, @SubCatgName, @SubCatgDesc)" UpdateCommand="UPDATE [SubCatgTable] SET [CatgId] = @CatgId, [SubCatgName] = @SubCatgName, [SubCatgDesc] = @SubCatgDesc WHERE [SubCatgId] = @SubCatgId">
                    <DeleteParameters>
                        <asp:Parameter Name="SubCatgId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CatgId" Type="Int32" />
                        <asp:Parameter Name="SubCatgName" Type="String" />
                        <asp:Parameter Name="SubCatgDesc" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CatgId" Type="Int32" />
                        <asp:Parameter Name="SubCatgName" Type="String" />
                        <asp:Parameter Name="SubCatgDesc" Type="String" />
                        <asp:Parameter Name="SubCatgId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </table>
</asp:Content>

