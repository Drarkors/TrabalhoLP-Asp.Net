using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Cadastro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSignup_Click(object sender, EventArgs e)
    {
        GamingHouse.Camadas.BLL.Cliente bllCliente = new GamingHouse.Camadas.BLL.Cliente();
        GamingHouse.Camadas.Model.Cliente cliente = new GamingHouse.Camadas.Model.Cliente();
        if (tbName.Text != "" && tbPass.Text != "" && tbCPass.Text != "" && tbRg.Text != "" && tbCpf.Text != "" && tbNasc.Text != "" && tbEmail.Text != "")
        {
            if (tbPass.Text.Equals(tbCPass.Text))
            {
                cliente.nome = tbName.Text;
                cliente.senha = tbPass.Text;
                cliente.rg = tbRg.Text;
                cliente.cpf = tbCpf.Text;
                cliente.nascimento = Convert.ToDateTime(tbNasc.Text);
                cliente.login = tbUser.Text;
                cliente.senha = tbPass.Text;
                cliente.email = tbEmail.Text;
                bllCliente.Insert(cliente);
                lblMsg.Text = "Registrado com Sucesso.";
            } else {
                lblMsg.Text = "Senha não Bate com a confirmação.";
            }
        } else
        {
            lblMsg.Text = "Todos os campos devem ser Preenchidos.";
        }
        Response.Redirect("Login.aspx");
    }
}