using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CadastroStaff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSignup_Click(object sender, EventArgs e)
    {
        GamingHouse.Camadas.BLL.Funcionario bllFuncionario = new GamingHouse.Camadas.BLL.Funcionario();
        GamingHouse.Camadas.Model.Funcionario funcionario = new GamingHouse.Camadas.Model.Funcionario();
        if (tbName.Text != "" && tbPass.Text != "" && tbCPass.Text != "" && tbRg.Text != "" && tbCpf.Text != "" && tbNasc.Text != "" && tbEmail.Text != "")
        {
            if (tbPass.Text.Equals(tbCPass.Text))
            {
                funcionario.nome = tbName.Text;
                funcionario.senha = tbPass.Text;
                funcionario.rg = tbRg.Text;
                funcionario.cpf = tbCpf.Text;
                funcionario.nascimento = Convert.ToDateTime(tbNasc.Text);
                funcionario.login = tbUser.Text;
                funcionario.senha = tbPass.Text;
                funcionario.email = tbEmail.Text;
                funcionario.cargo_id = 2;
                bllFuncionario.Insert(funcionario);
                lblMsg.Text = "Registrado com Sucesso.";
            }
            else {
                lblMsg.Text = "Senha não Bate com a confirmação.";
            }
        }
        else
        {
            lblMsg.Text = "Todos os campos devem ser Preenchidos.";
        }
    }
}