using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditVenda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GamingHouse.Camadas.BLL.Venda bllVenda = new GamingHouse.Camadas.BLL.Venda();
        GridView1.DataSource = bllVenda.Select();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}