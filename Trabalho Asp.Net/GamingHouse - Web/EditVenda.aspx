<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditVenda.aspx.cs" Inherits="EditVenda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idVenda" DataSourceID="SqlDataSource1" backcolor="White" bordercolor="Black" borderstyle="None" borderwidth="1px" cellpadding="4" font-bold="True" font-italic="False" font-strikeout="False" forecolor="Black" gridlines="Horizontal" horizontalalign="Center" pagesize="30" width="686px" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/Resources/sel5.png" SelectText="" ShowSelectButton="True" />
            <asp:BoundField DataField="idVenda" HeaderText="idVenda" InsertVisible="False" ReadOnly="True" SortExpression="idVenda" />
            <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
            <asp:BoundField DataField="Quantidade" HeaderText="Quantidade" SortExpression="Quantidade" />
            <asp:BoundField DataField="Cliente_id" HeaderText="Cliente_id" SortExpression="Cliente_id" />
            <asp:BoundField DataField="Produto_id" HeaderText="Produto_id" SortExpression="Produto_id" />
            <asp:CommandField ButtonType="Image" CancelImageUrl="~/Resources/cancelButton.png" DeleteImageUrl="~/Resources/deleteButton.jpg" EditImageUrl="~/Resources/editButton.png" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/Resources/confirmButton.png" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GamingHouseConnectionString %>" DeleteCommand="DELETE FROM [Venda] WHERE [idVenda] = @idVenda" InsertCommand="INSERT INTO [Venda] ([Valor], [Quantidade], [Cliente_id], [Produto_id]) VALUES (@Valor, @Quantidade, @Cliente_id, @Produto_id)" SelectCommand="SELECT * FROM [Venda]" UpdateCommand="UPDATE [Venda] SET [Valor] = @Valor, [Quantidade] = @Quantidade, [Cliente_id] = @Cliente_id, [Produto_id] = @Produto_id WHERE [idVenda] = @idVenda">
        <DeleteParameters>
            <asp:Parameter Name="idVenda" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Valor" Type="Decimal" />
            <asp:Parameter Name="Quantidade" Type="Int32" />
            <asp:Parameter Name="Cliente_id" Type="Int32" />
            <asp:Parameter Name="Produto_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Valor" Type="Decimal" />
            <asp:Parameter Name="Quantidade" Type="Int32" />
            <asp:Parameter Name="Cliente_id" Type="Int32" />
            <asp:Parameter Name="Produto_id" Type="Int32" />
            <asp:Parameter Name="idVenda" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

