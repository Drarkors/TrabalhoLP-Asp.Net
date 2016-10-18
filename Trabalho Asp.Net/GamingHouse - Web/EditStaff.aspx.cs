﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditStaff : System.Web.UI.Page
{

    public int x = 0;

    public void habilitaCampos(){
    if(x == 0){
            btEdit.Enabled = true;
            btEdit.Visible = true;
            btCancel.Visible = false;
            btConfirm.Visible = false;
            btCancel.Enabled = false;
            btConfirm.Enabled = false;
            tbName.Enabled = false;
            tbRg.Enabled = false;
            tbCpf.Enabled = false;
            tbNasc.Enabled = false;
            tbEmail.Enabled = false;
        } else if(x == 1)
        {
            btEdit.Enabled = false;
            btEdit.Visible = false;
            btCancel.Visible = true;
            btConfirm.Visible = true;
            btCancel.Enabled = true;
            btConfirm.Enabled = true;
            tbName.Enabled = true;
            tbRg.Enabled = true;
            tbCpf.Enabled = true;
            tbNasc.Enabled = true;
            tbEmail.Enabled = false;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        habilitaCampos();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        lblId.Text = row.Cells[1].Text;
        tbName.Text = row.Cells[2].Text;
        tbRg.Text = row.Cells[3].Text;
        tbCpf.Text = row.Cells[4].Text;
        tbNasc.Text = row.Cells[5].Text;
        tbEmail.Text = row.Cells[6].Text;
    }

    protected void btConfirm_Click(object sender, EventArgs e)
    {
        GamingHouse.Camadas.BLL.Funcionario bllFuncionario = new GamingHouse.Camadas.BLL.Funcionario();
        GamingHouse.Camadas.Model.Funcionario funcionario = new GamingHouse.Camadas.Model.Funcionario();
        try
        {
            funcionario.id = Convert.ToInt32(lblId.Text);
            funcionario.nome = tbName.Text;
            funcionario.rg = tbRg.Text;
            funcionario.cpf = tbCpf.Text;
            funcionario.nascimento = Convert.ToDateTime(tbNasc.Text);
            funcionario.email = tbEmail.Text;

            bllFuncionario.UpdateAdm(funcionario);
        }
        catch (Exception)
        {
            lblMsg.Text = "Valores Inválidos.";
        }
    }

    protected void btEdit_Click(object sender, EventArgs e)
    {
        x = 1;
        habilitaCampos();
    }

    protected void btCancel_Click(object sender, EventArgs e)
    {
        x = 0;
        habilitaCampos();
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}