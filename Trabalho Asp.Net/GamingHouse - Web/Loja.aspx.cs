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
            TextBox1.Visible = false;
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
        lblItem.Text = row.Cells[2].Text;
    }
}