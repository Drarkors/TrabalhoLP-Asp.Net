using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditStaff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GamingHouse.Camadas.BLL.Funcionario bllFuncionario = new GamingHouse.Camadas.BLL.Funcionario();
        GridView1.DataSource = bllFuncionario.Select();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}