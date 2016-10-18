<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gaming House</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/StyleSheet.css" rel="stylesheet" />
    <style>
        .navbar {
            background: #fd402e;
        }
    </style>
</head>

<body style="background-color: #000000">
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.intellisense.js"></script>
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/jquery-3.0.0.slim.js"></script>
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
<body>
    <form id="form1" runat="server">
        <div>
            <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css' />

            <nav class="nav nav-tabs" style="background: #181717">
                <li><a href="Home.aspx"><font color="white">Home</font></a></li>
                <li><a href="Loja.aspx"><font color="white">Loja</font></a></li>
                <script type="text/javascript">
                    if (Session["Loged"] == 1) {
                            document.write('<li><a href="#" ><font color= "white">Vendas</font></a></li>');
                            document.write('<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><font color="white">Cadastro</font></a> <ul class="dropdown-menu"> <li><a href="Cadastro.aspx">Clientes</a></li><li><a href="CadastroStaff.aspx">Funcionários</a></li> <li><a href="CadastroProduto.aspx">Produtos</a></li></ul></li>');
                            document.write('<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><font color="white">>Gerenciamento</font></a><ul class="dropdown-menu"> <li><a href="EditCliente.aspx">Clientes</a></li><li><a href="EditStaff.aspx">Funcionários</a></li> <li><a href="EditProduto.aspx">Produtos</a></li></ul></li>');
                            document.write('<li><a href="#" ><font color= "white">Logout</font></a></li>');
                    } else if (Session["Loged"] == 2) {
                            document.write('<li><a href="#" ><font color= "white">Vendas</font></a></li>');
                            document.write('<li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" href="#"> <font color= "white">Cadastro </font></a> <ul class="dropdown-menu"> <li><a href="Cadastro.aspx">Clientes</a></li><li><a href="CadastroAdm.aspx">Produtos</a></li></ul></li>');
                            document.write('<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><font color="white">>Gerenciamento</font></a><ul class="dropdown-menu"> <li><a href="EditCliente.aspx">Clientes</a></li><li><a href="EditProduto.aspx">Produtos</a></li></ul></li>');
                            document.write('<li><a href="#" ><font color= "white">Logout</font></a></li>');
                    } else if (Session["Loged"] == 3) {
                            document.write('<li><a href="#" ><font color= "white">Carrinho</font></a></li>');
                            document.write('<li><a href="#" ><font color= "white">Logout</font></a></li>');
                        } else {
                            document.write('<li><a href="Login.aspx" ><font color= "white">Login</font></a></li>');
                            document.write('<li><a href="Cadastro.aspx" ><font color= "white">Cadastro</font></a></li>');
                        }

                </script>
            </nav>
        </div>
        <div id="banner">
            <script type="text/javascript">
                if (screen.width > 1300 && screen.height > 768) {
                    document.write('<img src="Resources/banner3.png" />');
                } else {
                    document.write('<img src="Resources/banner2.png" />');
                }
            </script>
        </div>
        <div class="form-horizontal">
            <div class="col-md-1"></div>
            <h2>Login</h2>
            <div class="form-group" id="login">
                <asp:Label ID="Usertxt" runat="server" CssClass="col-md-2 control-label" Text="Usuário"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="UserTxtBox" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Usuário Requerido." ControlToValidate="UserTxtBox"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group" id="login">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Senha"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="PasswordTxtBox" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Senha Requerida." ControlToValidate="PasswordTxtBox"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="loginBtn" runat="server" Text="Login" OnClick="loginBtn_Click" />
                </div>
            </div>
        </div>

        <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Label ID="errorLbl" runat="server" CssClass="text-danger"></asp:Label>
                </div>
            </div>

        <footer>
            <div id="rodape">
                <br />
                <p>Desenvolvido por:</p>
                <p>Thales Ripa Usan & Rafael Figueiredo Zanetti</p>
                <br />
                <br />
            </div>
        </footer>
        <script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
        <script src='//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js'></script>
        <script>
            $(function () {
                $('.dropdown-toggle').dropdown();
            });
        </script>

        <p>
        </p>
    </form>
</body>
</html>
