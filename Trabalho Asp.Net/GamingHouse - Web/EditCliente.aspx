<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditCliente.aspx.cs" Inherits="EditCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="GridView">
        <asp:gridview id="GridView1" runat="server" allowpaging="True" allowsorting="True" autogeneratecolumns="False" backcolor="White" bordercolor="Black" borderstyle="None" borderwidth="1px" cellpadding="4" datakeynames="idCliente" datasourceid="SqlDataSource1" font-bold="True" font-italic="False" font-strikeout="False" forecolor="Black" gridlines="Horizontal" horizontalalign="Center" onselectedindexchanged="GridView1_SelectedIndexChanged1" pagesize="30" width="686px" onrowcommand="GridView1_RowCommand" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/Resources/sel5.png" SelectText="" ShowSelectButton="True" />
            <asp:BoundField DataField="idCliente" HeaderText="idCliente" InsertVisible="False" ReadOnly="True" SortExpression="idCliente" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="RG" HeaderText="RG" SortExpression="RG" />
            <asp:BoundField DataField="CPF" HeaderText="CPF" SortExpression="CPF" />
            <asp:BoundField DataField="Nascimento" HeaderText="Nascimento" SortExpression="Nascimento" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" DeleteImageUrl="~/Resources/deleteButton.jpg" EditImageUrl="~/Resources/editButton.png" InsertImageUrl="~/Resources/addButton.png" ButtonType="Image" CancelImageUrl="~/Resources/cancelButton.png" UpdateImageUrl="~/Resources/confirmButton.png" />
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
        <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:GamingHouseConnectionString %>" selectcommand="SELECT [idCliente], [Nome], [RG], [CPF], [Nascimento], [Email] FROM [Cliente]" DeleteCommand="DELETE FROM [Cliente] WHERE [idCliente] = @idCliente" InsertCommand="INSERT INTO [Cliente] ([Nome], [RG], [CPF], [Nascimento], [Email]) VALUES (@Nome, @RG, @CPF, @Nascimento, @Email)" UpdateCommand="UPDATE [Cliente] SET [Nome] = @Nome, [RG] = @RG, [CPF] = @CPF, [Nascimento] = @Nascimento, [Email] = @Email WHERE [idCliente] = @idCliente">
            <DeleteParameters>
                <asp:Parameter Name="idCliente" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="RG" Type="String" />
                <asp:Parameter Name="CPF" Type="String" />
                <asp:Parameter DbType="Date" Name="Nascimento" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome" Type="String" />
                <asp:Parameter Name="RG" Type="String" />
                <asp:Parameter Name="CPF" Type="String" />
                <asp:Parameter DbType="Date" Name="Nascimento" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="idCliente" Type="Int32" />
            </UpdateParameters>
        </asp:sqldatasource>
    </div>
  <!---  <div class="center-page">
        <label class="col-xs-11">Id:</label>
        <div class="col-xs-11">
            <asp:Label ID="lblId" ForeColor="White" runat="Server" Text=""></asp:Label>
        </div>
        <label class="col-xs-11">Name</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder="Name" Width="50%" Enabled = "false"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tbName" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>

        <label class="col-xs-11">Rg</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbRg" runat="server" Class="form-control" placeholder="Rg" Width="50%" MaxLength="9" Enabled = "false"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tbRg" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>

        <label class="col-xs-11">Cpf</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbCpf" runat="server" Class="form-control" placeholder="Cpf" Width="50%" MaxLength="13" Enabled = "false"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tbCpf" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>

        <label class="col-xs-11">Nascimento</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbNasc" runat="server" Class="form-control" placeholder="DD/MM/AAAA" TextMode="Date" Width="50%" Enabled = "false"></asp:TextBox>
        </div>

        <label class="col-xs-11">Email</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email" Width="50%" Enabled = "false"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tbEmail" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>

        <div class="col-xs-11 space-vert">
            <asp:Button ID="btConfirm" runat="server" Class="btn btn-success" Text="Salvar" OnClick="btConfirm_Click" ValidationGroup="validate"/>
            <asp:Button ID="btEdit" runat="server" Class="btn btn-primary" Text="Editar" OnClick="btEdit_Click"/>
            <asp:Button ID="btCancel" runat="server" Class="btn btn-danger" Text="Cancelar" OnClick="btCancel_Click" Enabled = "false"/>
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </div> --->
</asp:Content>

