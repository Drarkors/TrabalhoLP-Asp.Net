using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CadastroFornecedor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btSignup_Click(object sender, EventArgs e)
    {
        GamingHouse.Camadas.BLL.Fornecedor bllFornecedor = new GamingHouse.Camadas.BLL.Fornecedor();
        GamingHouse.Camadas.Model.Fornecedor fornecedor = new GamingHouse.Camadas.Model.Fornecedor();
        if (tbNome.Text != "" && tbCnpj.Text != "")
        {
            fornecedor.nome = tbNome.Text;
            fornecedor.cnpj = tbCnpj.Text;
            bllFornecedor.Insert(fornecedor);
            lblMsg.Text = "Registrado com Sucesso.";
        }
        else
        {
            lblMsg.Text = "Todos os campos devem ser Preenchidos.";
        }
    }
}