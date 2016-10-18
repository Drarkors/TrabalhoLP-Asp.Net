<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     </br>
    <div align="center" id="Vendas">
        <font color="white">Últimas vendas:</font></br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idVenda" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" Width="504px" AllowPaging="True" PageSize="30">
        <Columns>
            <asp:BoundField DataField="idVenda" HeaderText="idVenda" InsertVisible="False" ReadOnly="True" SortExpression="idVenda" />
            <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
            <asp:BoundField DataField="Quantidade" HeaderText="Quantidade" SortExpression="Quantidade" />
            <asp:BoundField DataField="Produto_id" HeaderText="Produto_id" SortExpression="Produto_id" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
        </div>

    <div align="center" id="Produtos">
        </br>
        <font color="white">Jogos disponíveis:</font></br>

        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" PageSize="30" Width="504px">
            <Columns>
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GamingHouseConnectionString %>" SelectCommand="SELECT [Nome], [Valor] FROM [Produto]"></asp:SqlDataSource>



    </div>
    </br>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GamingHouseConnectionString %>" SelectCommand="SELECT [idVenda], [Valor], [Quantidade], [Produto_id] FROM [Venda]"></asp:SqlDataSource>
</asp:Content>

