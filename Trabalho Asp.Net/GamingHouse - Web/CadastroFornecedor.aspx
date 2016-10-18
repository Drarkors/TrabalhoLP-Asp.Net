<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CadastroFornecedor.aspx.cs" Inherits="CadastroFornecedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="center-page">
    <label class="col-xs-11">Nome</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbNome" runat="server" Class="form-control" placeholder="Nome" Width="50%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbNome" ErrorMessage="Campo Obrigatório." style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>

        <label class="col-xs-11">CNPJ</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbCnpj" runat="server" Class="form-control" placeholder="CNPJ" TextMode="Number" Width="50%" MaxLength="13"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tb" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>
      <div class="col-xs-11 space-vert">
            <asp:Button ID="btSignup" runat="server" Class="btn btn-success" Text="Cadastrar" OnClick="btSignup_Click" ValidationGroup="validate" />
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </div>
</asp:Content>

