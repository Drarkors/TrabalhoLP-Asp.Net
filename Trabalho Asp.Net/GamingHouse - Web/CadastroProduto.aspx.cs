using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CadastroProduto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSignup_Click(object sender, EventArgs e)
    {
        GamingHouse.Camadas.BLL.Produto bllProduto = new GamingHouse.Camadas.BLL.Produto();
        GamingHouse.Camadas.Model.Produto produto = new GamingHouse.Camadas.Model.Produto();
        if (tbNome.Text != "" && tbTipo.Text != "" && tbValor.Text != "" && tbQuant.Text != "" && tbEstoque_id.Text != "")
        {
                produto.nome = tbNome.Text;
                produto.valor = float.Parse(tbValor.Text);
                produto.quantidade = Convert.ToInt32(tbQuant.Text);
                produto.tipo = Convert.ToInt32(tbTipo.Text);
                produto.estoque_id = Convert.ToInt32(tbEstoque_id.Text);
                bllProduto.Insert(produto);
                lblMsg.Text = "Registrado com Sucesso.";
        }
        else
        {
            lblMsg.Text = "Todos os campos devem ser Preenchidos.";
        }
    }
}