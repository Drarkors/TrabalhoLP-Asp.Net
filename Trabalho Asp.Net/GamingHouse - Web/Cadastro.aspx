<%@ Page Title="Gaming House - Cadastro" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cadastro.aspx.cs" Inherits="Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="center-page">
        <label class="col-xs-11">Usuário</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbUser" runat="server" Class="form-control" placeholder="Usuário" Width="50%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbUser" ErrorMessage="Campo Obrigatório." style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>
        <label class="col-xs-11">Senha</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Senha" TextMode="Password" Width="50%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tbPass" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>

        <label class="col-xs-11">Confirmar Senha</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirmar Senha" TextMode="Password" Width="50%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbCPass" ErrorMessage="Campo Obrigatório." style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>

        <label class="col-xs-11">Name</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder="Name" Width="50%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tbName" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>

        <label class="col-xs-11">Rg</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbRg" runat="server" Class="form-control" placeholder="Rg" Width="50%" MaxLength="9"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tbRg" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>

        <label class="col-xs-11">Cpf</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbCpf" runat="server" Class="form-control" placeholder="Cpf" Width="50%" MaxLength="13"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tbCpf" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>

        <label class="col-xs-11">Nascimento</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbNasc" runat="server" Class="form-control" placeholder="DD/MM/AAAA" TextMode="Date" Width="50%"></asp:TextBox>
        </div>

        <label class="col-xs-11">Email</label>
        <div class="col-xs-11">
            <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email" Width="50%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Campo Obrigatório." ControlToValidate="tbEmail" style="color:red" ValidationGroup = "validate"></asp:RequiredFieldValidator>
        </div>

        <div class="col-xs-11 space-vert">
            <asp:Button ID="btSignup" runat="server" Class="btn btn-success" Text="Cadastrar" OnClick="btSignup_Click" ValidationGroup="validate" />
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </div>

</asp:Content>

