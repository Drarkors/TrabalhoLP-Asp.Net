using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void loginBtn_Click(object sender, EventArgs e)
    {
        String conexao = ConfigurationManager.ConnectionStrings["GamingHouseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(conexao))
        {
            SqlCommand cmd = new SqlCommand("Select idCliente From Cliente Where Login ='" + UserTxtBox.Text + "' AND Senha='" + PasswordTxtBox.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count != 0)
            {
                Session["Loged"] = 3;
                Session["User"] = UserTxtBox.Text.ToString();
                Response.Redirect("Home.aspx");
            } else
            {
                errorLbl.Text = "Usuário ou Senha inválidos";
            }
        }
        
    }
}