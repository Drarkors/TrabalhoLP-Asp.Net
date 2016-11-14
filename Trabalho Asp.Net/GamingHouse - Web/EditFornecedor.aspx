<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditFornecedor.aspx.cs" Inherits="EditFornecedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idFornecedor" DataSourceID="SqlDataSource1" backcolor="White" bordercolor="Black" borderstyle="None" borderwidth="1px" cellpadding="4" font-bold="True" font-italic="False" font-strikeout="False" forecolor="Black" gridlines="Horizontal" horizontalalign="Center" pagesize="30" width="686px" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/Resources/sel5.png" SelectText="" ShowSelectButton="True" />
            <asp:BoundField DataField="idFornecedor" HeaderText="idFornecedor" InsertVisible="False" ReadOnly="True" SortExpression="idFornecedor" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="CNPJ" HeaderText="CNPJ" SortExpression="CNPJ" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GamingHouseConnectionString %>" DeleteCommand="DELETE FROM [Fornecedor] WHERE [idFornecedor] = @idFornecedor" InsertCommand="INSERT INTO [Fornecedor] ([Nome], [CNPJ]) VALUES (@Nome, @CNPJ)" SelectCommand="SELECT * FROM [Fornecedor]" UpdateCommand="UPDATE [Fornecedor] SET [Nome] = @Nome, [CNPJ] = @CNPJ WHERE [idFornecedor] = @idFornecedor">
        <DeleteParameters>
            <asp:Parameter Name="idFornecedor" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="CNPJ" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="CNPJ" Type="String" />
            <asp:Parameter Name="idFornecedor" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

