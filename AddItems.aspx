<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddItems.aspx.cs" Inherits="AddItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
            border-style: solid;
            border-width: 5px;
        }
        .auto-style6 {
            width: 181px;
        }
    .auto-style7 {
        width: 181px;
        height: 29px;
    }
    .auto-style8 {
        height: 29px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="5" class="auto-style5">
        <tr>
            <td class="auto-style6">Select Category</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CatgName" DataValueField="CatgId">
                </asp:DropDownList>
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
        <tr>
            <td class="auto-style6">Select SubCategory</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="SubCatgName" DataValueField="SubCatgId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EShoppingDBConnectionString2 %>" SelectCommand="SELECT [CatgId], [SubCatgName], [SubCatgId] FROM [SubCatgTable] WHERE ([CatgId] = @CatgId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="CatgId" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Product Name</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">MRP</td>
            <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Our Price</td>
            <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Description</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="69px" TextMode="MultiLine" Width="557px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-top: 0px" Text="Add Itms" />
            </td>
            <td>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource3" ForeColor="Black">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="SubCatgId" HeaderText="SubCatgId" SortExpression="SubCatgId" />
                    <asp:BoundField DataField="proname" HeaderText="proname" SortExpression="proname" />
                    <asp:BoundField DataField="MRP" HeaderText="MRP" SortExpression="MRP" />
                    <asp:BoundField DataField="proprice" HeaderText="proprice" SortExpression="proprice" />
                    <asp:BoundField DataField="descrpiton" HeaderText="descrpiton" SortExpression="descrpiton" />
                    <asp:BoundField DataField="ProImages" HeaderText="ProImages" SortExpression="ProImages" />
                    <asp:ImageField DataImageUrlField="ProImages" HeaderText="pro image" NullDisplayText="image unavailable">
                    </asp:ImageField>
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EShoppingDBConnectionString2 %>" DeleteCommand="DELETE FROM [Product] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Product] ([SubCatgId], [proname], [MRP], [proprice], [descrpiton], [ProImages]) VALUES (@SubCatgId, @proname, @MRP, @proprice, @descrpiton, @ProImages)" SelectCommand="SELECT [Id], [SubCatgId], [proname], [MRP], [proprice], [descrpiton], [ProImages] FROM [Product]" UpdateCommand="UPDATE [Product] SET [SubCatgId] = @SubCatgId, [proname] = @proname, [MRP] = @MRP, [proprice] = @proprice, [descrpiton] = @descrpiton, [ProImages] = @ProImages WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="SubCatgId" Type="Int32" />
                    <asp:Parameter Name="proname" Type="String" />
                    <asp:Parameter Name="MRP" Type="Decimal" />
                    <asp:Parameter Name="proprice" Type="Decimal" />
                    <asp:Parameter Name="descrpiton" Type="String" />
                    <asp:Parameter Name="ProImages" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SubCatgId" Type="Int32" />
                    <asp:Parameter Name="proname" Type="String" />
                    <asp:Parameter Name="MRP" Type="Decimal" />
                    <asp:Parameter Name="proprice" Type="Decimal" />
                    <asp:Parameter Name="descrpiton" Type="String" />
                    <asp:Parameter Name="ProImages" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    </table>
</asp:Content>

