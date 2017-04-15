<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddProducts.aspx.cs" Inherits="AddProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
            border-style: solid;
            border-width: 5px;
        }
        .auto-style6 {
            width: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="5" class="auto-style5">
        <tr>
            <td class="auto-style6">Enter Category</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Description</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="26px" TextMode="MultiLine" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Catg" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            </td>
        </tr>
                <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CatgId" DataSourceID="SqlDataSource1" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CatgId" HeaderText="CatgId" InsertVisible="False" ReadOnly="True" SortExpression="CatgId" />
                    <asp:BoundField DataField="CatgName" HeaderText="CatgName" SortExpression="CatgName" />
                    <asp:BoundField DataField="CatgDesc" HeaderText="CatgDesc" SortExpression="CatgDesc" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EShoppingDBConnectionString2 %>" DeleteCommand="DELETE FROM [CatgTable] WHERE [CatgId] = @CatgId" InsertCommand="INSERT INTO [CatgTable] ([CatgName], [CatgDesc]) VALUES (@CatgName, @CatgDesc)" SelectCommand="SELECT [CatgId], [CatgName], [CatgDesc] FROM [CatgTable]" UpdateCommand="UPDATE [CatgTable] SET [CatgName] = @CatgName, [CatgDesc] = @CatgDesc WHERE [CatgId] = @CatgId">
                <DeleteParameters>
                    <asp:Parameter Name="CatgId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CatgName" Type="String" />
                    <asp:Parameter Name="CatgDesc" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CatgName" Type="String" />
                    <asp:Parameter Name="CatgDesc" Type="String" />
                    <asp:Parameter Name="CatgId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
                    </td>
    </tr> 
        </table>

</asp:Content>
