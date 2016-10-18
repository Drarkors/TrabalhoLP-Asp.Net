using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CadastroVenda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSignup_Click(object sender, EventArgs e)
    {
        GamingHouse.Camadas.BLL.Venda bllVenda = new GamingHouse.Camadas.BLL.Venda();
        GamingHouse.Camadas.Model.Venda venda = new GamingHouse.Camadas.Model.Venda();
        if (tbCliente_id.Text != "" && tbProduto_id.Text != "" && tbQuant.Text != "" && tbValor.Text != "")
        {
            venda.cliente_id = Convert.ToInt32(tbCliente_id.Text);
            venda.produto_id = Convert.ToInt32(tbProduto_id.Text);
            venda.quantidade = Convert.ToInt32(tbProduto_id.Text);
            venda.valor = float.Parse(tbValor.Text);
            bllVenda.Insert(venda);
            lblMsg.Text = "Registrado com Sucesso.";
        }
        else
        {
            lblMsg.Text = "Todos os campos devem ser Preenchidos.";
        }
    }
}