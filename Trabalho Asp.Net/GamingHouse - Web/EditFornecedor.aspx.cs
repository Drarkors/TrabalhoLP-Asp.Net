using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditFornecedor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GamingHouse.Camadas.BLL.Fornecedor bllFornecedor = new GamingHouse.Camadas.BLL.Fornecedor();
        GridView1.DataSource = bllFornecedor.Select();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}