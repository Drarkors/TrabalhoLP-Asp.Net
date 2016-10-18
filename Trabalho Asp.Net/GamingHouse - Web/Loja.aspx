<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Loja.aspx.cs" Inherits="Loja" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="GridView">
        <asp:gridview id="GridView1" runat="server" allowpaging="True" allowsorting="True" autogeneratecolumns="False" backcolor="White" bordercolor="Black" borderstyle="None" borderwidth="1px" cellpadding="4" datakeynames="idProduto" datasourceid="SqlDataSource1" font-bold="True" font-italic="False" font-strikeout="False" forecolor="Black" gridlines="Horizontal" horizontalalign="Center" onselectedindexchanged="GridView1_SelectedIndexChanged1" pagesize="30" width="686px" onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/Resources/sel5.png" SelectText="" ShowSelectButton="True" />
            <asp:BoundField DataField="idProduto" HeaderText="idProduto" InsertVisible="False" ReadOnly="True" SortExpression="idProduto" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
            <asp:BoundField DataField="Quantidade" HeaderText="Quantidade" SortExpression="Quantidade" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
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
        <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:GamingHouseConnectionString %>" selectcommand="SELECT [idProduto], [Nome], [Valor], [Quantidade], [Tipo] FROM [Produto]"></asp:sqldatasource>
    </div>
    </br>
    <div align="center">
        <font color="white"><bold>Item selecionado:</bold>
        <asp:Label ID="lblItem" runat="server" ForeColor="White" Font-Bold="True"></asp:Label>
        &nbsp;Quant.:&nbsp;</font>
        <asp:textbox id="TextBox1" runat="server" height="14px" width="28px"></asp:textbox>
        &nbsp;
        <asp:imagebutton id="ImageButton1" runat="server" height="25px" imageurl="~/Resources/Botao-Comprar1.jpg" />
        </br>
    </div>
</asp:Content>

