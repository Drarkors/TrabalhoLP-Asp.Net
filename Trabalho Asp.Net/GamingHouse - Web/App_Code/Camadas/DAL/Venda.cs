using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.DAL
{
    public class Venda
    {
        private string strCon = Conexao.getConect();

        public List<Model.Venda> Select()
        {
            List<Model.Venda> lstVenda = new List<Model.Venda>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Venda;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Venda venda = new Model.Venda();
                    venda.id = Convert.ToInt32(reader[0].ToString());
                    venda.valor = Convert.ToSingle(reader["valor"].ToString());
                    venda.quantidade = Convert.ToInt32(reader["quantidade"].ToString());
                    venda.cliente_id = Convert.ToInt32(reader["cliente_id"].ToString());
                    venda.produto_id = Convert.ToInt32(reader["produto_id"].ToString());
                    lstVenda.Add(venda);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Vendas...");
            }
            finally
            {
                conexao.Close();
            }

            return lstVenda;
        }


        public List<Model.Venda> SelectById(int id)
        {
            List<Model.Venda> lstVenda = new List<Model.Venda>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Venda Where idVenda = @id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", id);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Venda Venda = new Model.Venda();
                    Venda.id = Convert.ToInt32(reader[0].ToString());
                    Venda.valor = Convert.ToSingle(reader["valor"].ToString());
                    Venda.quantidade = Convert.ToInt32(reader["quantidade"].ToString());
                    Venda.cliente_id = Convert.ToInt32(reader["cliente_id"].ToString());
                    Venda.produto_id = Convert.ToInt32(reader["produto_id"].ToString());
                    lstVenda.Add(Venda);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Vendas por ID...");
            }
            finally
            {
                conexao.Close();
            }

            return lstVenda;
        }


        public List<Model.Venda> SelectByValor(float valor)
        {
            List<Model.Venda> lstVenda = new List<Model.Venda>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Venda Where Valor = @valor;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@valor", valor);
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Venda Venda = new Model.Venda();
                    Venda.id = Convert.ToInt32(reader[0].ToString());
                    Venda.valor = Convert.ToSingle(reader["valor"].ToString());
                    Venda.quantidade = Convert.ToInt32(reader["quantidade"].ToString());
                    Venda.cliente_id = Convert.ToInt32(reader["cliente_id"].ToString());
                    Venda.produto_id = Convert.ToInt32(reader["produto_id"].ToString());
                    lstVenda.Add(Venda);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Vendaes por Nome...");
            }
            finally
            {
                conexao.Close();
            }

            return lstVenda;
        }

        public void Insert(Model.Venda venda)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Venda values (@valor * @quantidade,@quantidade,@cliente_id,@produto_id);";
            sql += "Update Produto set Quantidade = Quantidade - @quantidade where idProduto = @produto_id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@valor", venda.valor);
            cmd.Parameters.AddWithValue("@quantidade", venda.quantidade);
            cmd.Parameters.AddWithValue("@cliente_id", venda.cliente_id);
            cmd.Parameters.AddWithValue("@produto_id", venda.produto_id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na inserção de Vendas...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(Model.Venda venda)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Venda set Nome=@nome, Valor=@valor, Quantidade=@quantidade, Cliente_id=@cliente_id, Produto_id=@produto_id";
            sql += " where idVenda=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", venda.id);
            cmd.Parameters.AddWithValue("@valor", venda.valor);
            cmd.Parameters.AddWithValue("@quantidade", venda.quantidade);
            cmd.Parameters.AddWithValue("@cliente_id", venda.cliente_id);
            cmd.Parameters.AddWithValue("@produto_id", venda.produto_id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na atualização de Vendas");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(Model.Venda venda)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Venda where idVenda=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", venda.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na Remoção de Vendas");
            }
            finally
            {
                conexao.Close();
            }

        }

    }
}