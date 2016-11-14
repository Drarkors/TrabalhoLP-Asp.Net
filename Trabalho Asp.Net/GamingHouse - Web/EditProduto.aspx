<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditProduto.aspx.cs" Inherits="EditProduto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idProduto" DataSourceID="SqlDataSource1" backcolor="White" bordercolor="Black" borderstyle="None" borderwidth="1px" cellpadding="4" font-bold="True" font-italic="False" font-strikeout="False" forecolor="Black" gridlines="Horizontal" horizontalalign="Center" pagesize="30" width="686px" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/Resources/sel5.png" SelectText="" ShowSelectButton="True" />
            <asp:BoundField DataField="idProduto" HeaderText="idProduto" InsertVisible="False" ReadOnly="True" SortExpression="idProduto" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
            <asp:BoundField DataField="Quantidade" HeaderText="Quantidade" SortExpression="Quantidade" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
            <asp:BoundField DataField="Estoque_id" HeaderText="Estoque_id" SortExpression="Estoque_id" />
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
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GamingHouseConnectionString %>" DeleteCommand="DELETE FROM [Produto] WHERE [idProduto] = @idProduto" InsertCommand="INSERT INTO [Produto] ([Nome], [Valor], [Quantidade], [Tipo], [Estoque_id]) VALUES (@Nome, @Valor, @Quantidade, @Tipo, @Estoque_id)" SelectCommand="SELECT * FROM [Produto]" UpdateCommand="UPDATE [Produto] SET [Nome] = @Nome, [Valor] = @Valor, [Quantidade] = @Quantidade, [Tipo] = @Tipo, [Estoque_id] = @Estoque_id WHERE [idProduto] = @idProduto">
        <DeleteParameters>
            <asp:Parameter Name="idProduto" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Valor" Type="Decimal" />
            <asp:Parameter Name="Quantidade" Type="Int32" />
            <asp:Parameter Name="Tipo" Type="Int32" />
            <asp:Parameter Name="Estoque_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Valor" Type="Decimal" />
            <asp:Parameter Name="Quantidade" Type="Int32" />
            <asp:Parameter Name="Tipo" Type="Int32" />
            <asp:Parameter Name="Estoque_id" Type="Int32" />
            <asp:Parameter Name="idProduto" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

