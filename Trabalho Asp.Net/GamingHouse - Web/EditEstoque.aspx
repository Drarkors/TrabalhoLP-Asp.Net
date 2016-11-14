<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditEstoque.aspx.cs" Inherits="EditEstoque" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="GridView">
        <asp:gridview id="GridView1" runat="server" allowpaging="True" allowsorting="True" autogeneratecolumns="False" backcolor="White" bordercolor="Black" borderstyle="None" borderwidth="1px" cellpadding="4" datakeynames="idEstoque" datasourceid="SqlDataSource1" font-bold="True" font-italic="False" font-strikeout="False" forecolor="Black" gridlines="Horizontal" horizontalalign="Center" onselectedindexchanged="GridView1_SelectedIndexChanged1" pagesize="30" width="686px" onrowcommand="GridView1_RowCommand" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/Resources/sel5.png" SelectText="" ShowSelectButton="True" />
            <asp:BoundField DataField="idEstoque" HeaderText="idEstoque" InsertVisible="False" ReadOnly="True" SortExpression="idEstoque" />
            <asp:BoundField DataField="Entrada" HeaderText="Entrada" SortExpression="Entrada" />
            <asp:BoundField DataField="Fornecedor_id" HeaderText="Fornecedor_id" SortExpression="Fornecedor_id" />
            <asp:BoundField DataField="Produto_id" HeaderText="Produto_id" SortExpression="Produto_id" />
            <asp:CommandField ButtonType="Image" CancelImageUrl="~/Resources/cancelButton.png" DeleteImageUrl="~/Resources/deleteButton.jpg" EditImageUrl="~/Resources/editButton.png" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/Resources/confirmButton.png" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:gridview>
        <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:GamingHouseConnectionString %>" selectcommand="SELECT * FROM [Estoque]" DeleteCommand="DELETE FROM [Estoque] WHERE [idEstoque] = @idEstoque" InsertCommand="INSERT INTO [Estoque] ([Entrada], [Fornecedor_id], [Produto_id]) VALUES (@Entrada, @Fornecedor_id, @Produto_id)" UpdateCommand="UPDATE [Estoque] SET [Entrada] = @Entrada, [Fornecedor_id] = @Fornecedor_id, [Produto_id] = @Produto_id WHERE [idEstoque] = @idEstoque">
            <DeleteParameters>
                <asp:Parameter Name="idEstoque" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Entrada" Type="Int32" />
                <asp:Parameter Name="Fornecedor_id" Type="Int32" />
                <asp:Parameter Name="Produto_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Entrada" Type="Int32" />
                <asp:Parameter Name="Fornecedor_id" Type="Int32" />
                <asp:Parameter Name="Produto_id" Type="Int32" />
                <asp:Parameter Name="idEstoque" Type="Int32" />
            </UpdateParameters>
        </asp:sqldatasource>
</asp:Content>

