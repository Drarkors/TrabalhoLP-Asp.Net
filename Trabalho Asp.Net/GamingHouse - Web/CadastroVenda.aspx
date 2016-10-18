<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CadastroVenda.aspx.cs" Inherits="CadastroVenda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="center-page">
    <label class="col-xs-11">Id do Cliente</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbCliente_id" runat="server" Class="form-control" placeholder="Quantidade" TextMode ="Number" Width="50%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbCliente_id" ErrorMessage="Campo Obrigatório." style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>
        <label class="col-xs-11">Id do Produto</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbProduto_id" runat="server" Class="form-control" placeholder="ID" TextMode="Number" Width="50%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tbProduto_id" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>
        <label class="col-xs-11">Valor do Prouto</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbValor" runat="server" Class="form-control" placeholder="Ex.:1.99" Width="50%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tbValor" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>
        <label class="col-xs-11">Quantidade</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbQuant" runat="server" Class="form-control" placeholder="ID" TextMode="Number" Width="50%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tbQuant" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>
      <div class="col-xs-11 space-vert">
            <asp:Button ID="btSignup" runat="server" Class="btn btn-success" Text="Cadastrar" OnClick="btSignup_Click" ValidationGroup="validate" />
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </div>
</asp:Content>

