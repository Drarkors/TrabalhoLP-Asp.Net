<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditStaff-Admin.aspx.cs" Inherits="EditStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="GridView">
        <asp:gridview id="GridView1" runat="server" allowpaging="True" allowsorting="True" autogeneratecolumns="False" backcolor="White" bordercolor="Black" borderstyle="None" borderwidth="1px" cellpadding="4" datakeynames="idCliente" datasourceid="SqlDataSource1" font-bold="True" font-italic="False" font-strikeout="False" forecolor="Black" gridlines="Horizontal" horizontalalign="Center" onselectedindexchanged="GridView1_SelectedIndexChanged1" pagesize="30" width="800px" onrowcommand="GridView1_RowCommand" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/Resources/sel5.png" SelectText="" ShowSelectButton="True" />
            <asp:BoundField DataField="idCliente" HeaderText="idCliente" InsertVisible="False" ReadOnly="True" SortExpression="idCliente" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="RG" HeaderText="RG" SortExpression="RG" />
            <asp:BoundField DataField="CPF" HeaderText="CPF" SortExpression="CPF" />
            <asp:BoundField DataField="Nascimento" HeaderText="Nascimento" SortExpression="Nascimento" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
            <asp:BoundField DataField="Senha" HeaderText="Senha" SortExpression="Senha" />
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
        <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:GamingHouseConnectionString %>" selectcommand="SELECT [idCliente], [Nome], [RG], [CPF], [Nascimento], [Email], [Login], [Senha] FROM [Cliente]" DeleteCommand="DELETE FROM [Cliente] WHERE [idCliente] = @idCliente" InsertCommand="INSERT INTO [Cliente] ([Nome], [RG], [CPF], [Nascimento], [Email], [Login], [Senha]) VALUES (@Nome, @RG, @CPF, @Nascimento, @Email, @Login, @Senha)" UpdateCommand="UPDATE [Cliente] SET [Nome] = @Nome, [RG] = @RG, [CPF] = @CPF, [Nascimento] = @Nascimento, [Email] = @Email, [Login] = @Login, [Senha] = @Senha WHERE [idCliente] = @idCliente">
            <DeleteParameters>
                <asp:Parameter Name="idCliente" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="RG" Type="String" />
                <asp:Parameter Name="CPF" Type="String" />
                <asp:Parameter DbType="Date" Name="Nascimento" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Login" Type="String" />
                <asp:Parameter Name="Senha" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="RG" Type="String" />
                <asp:Parameter Name="CPF" Type="String" />
                <asp:Parameter DbType="Date" Name="Nascimento" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Login" Type="String" />
                <asp:Parameter Name="Senha" Type="String" />
                <asp:Parameter Name="idCliente" Type="Int32" />
            </UpdateParameters>
        </asp:sqldatasource>
    </div>
</asp:Content>

