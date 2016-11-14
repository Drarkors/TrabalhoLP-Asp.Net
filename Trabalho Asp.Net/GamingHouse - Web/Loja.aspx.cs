using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Loja : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(int.Parse(Session["Loged"].ToString()) == 0){
            ImageButton1.Visible = false;
            txtQuant.Visible = false;
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        lblIdProd.Text = row.Cells[1].Text;
        lblItem.Text = row.Cells[2].Text;
        lblValor.Text = row.Cells[3].Text;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        GamingHouse.Camadas.BLL.Venda bllVenda = new GamingHouse.Camadas.BLL.Venda();
        GamingHouse.Camadas.Model.Venda venda = new GamingHouse.Camadas.Model.Venda();
        if (lblItem.Text != "" && lblIdCli.Text != "")
        {
            venda.cliente_id = Convert.ToInt32(lblIdCli.Text);
            venda.produto_id = Convert.ToInt32(lblIdProd.Text);
            venda.quantidade = Convert.ToInt32(txtQuant.Text);
            venda.valor = float.Parse(lblValor.Text);
            bllVenda.Insert(venda);
            lblMsg.Text = "Compra Realizada com Sucesso.";
        }
        else
        {
            lblMsg.Text = "Todos os campos devem ser Preenchidos.";
        }
    }

    protected void GridView3_Init(object sender, EventArgs e)
    {
        
    }

    protected void GridView3_RowCreated(object sender, GridViewRowEventArgs e)
    {
        
    }

    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        GridViewRow row = GridView3.Rows[Convert.ToInt32(e.CommandArgument)];
        lblIdCli.Text = row.Cells[1].Text;
    }
}