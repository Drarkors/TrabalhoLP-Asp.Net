using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CadastroEstoque : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btSignup_Click(object sender, EventArgs e)
    {
        GamingHouse.Camadas.BLL.Estoque bllEstoque = new GamingHouse.Camadas.BLL.Estoque();
        GamingHouse.Camadas.Model.Estoque estoque = new GamingHouse.Camadas.Model.Estoque();
        if (tbEntrada.Text != "" && tbFornecedor_id.Text != "")
        {
            estoque.entrada = Convert.ToInt32(tbEntrada.Text);
            estoque.fornecedor_id = Convert.ToInt32(tbFornecedor_id.Text);
            estoque.produto_id = Convert.ToInt32(tbProduto_id.Text);
            bllEstoque.Insert(estoque);
            lblMsg.Text = "Registrado com Sucesso.";
        }
        else
        {
            lblMsg.Text = "Todos os campos devem ser Preenchidos.";
        }
    }
}