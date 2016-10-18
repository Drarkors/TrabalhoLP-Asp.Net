using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.DAL
{
    public class Produto
    {
        private string strCon = Conexao.getConect();

        public List<Model.Produto> Select()
        {
            List<Model.Produto> lstProduto = new List<Model.Produto>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Produto;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Produto produto = new Model.Produto();
                    produto.id = Convert.ToInt32(reader[0].ToString());
                    produto.nome = reader["nome"].ToString();
                    produto.valor = Convert.ToSingle(reader["valor"].ToString());
                    produto.quantidade = Convert.ToInt32(reader["quantidade"].ToString());
                    produto.tipo = Convert.ToInt32(reader["tipo"].ToString());
                    produto.estoque_id = Convert.ToInt32(reader["estoque_id"].ToString());
                    lstProduto.Add(produto);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Produtos...");
            }
            finally
            {
                conexao.Close();
            }

            return lstProduto;
        }


        public List<Model.Produto> SelectById(int id)
        {
            List<Model.Produto> lstProduto = new List<Model.Produto>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Produto Where idProduto = @id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", id);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Produto Produto = new Model.Produto();
                    Produto.id = Convert.ToInt32(reader[0].ToString());
                    Produto.nome = reader["nome"].ToString();
                    Produto.valor = Convert.ToSingle(reader["valor"].ToString());
                    Produto.quantidade = Convert.ToInt32(reader["quantidade"].ToString());
                    Produto.estoque_id = Convert.ToInt32(reader["estoque_id"].ToString());
                    lstProduto.Add(Produto);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Produtos por ID...");
            }
            finally
            {
                conexao.Close();
            }

            return lstProduto;
        }


        public List<Model.Produto> SelectByNome(string nome)
        {
            List<Model.Produto> lstProduto = new List<Model.Produto>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Produto Where Nome = @nome;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@nome", nome.Trim() + "%");
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Produto Produto = new Model.Produto();
                    Produto.id = Convert.ToInt32(reader[0].ToString());
                    Produto.nome = reader["nome"].ToString();
                    Produto.valor = Convert.ToSingle(reader["valor"].ToString());
                    Produto.quantidade = Convert.ToInt32(reader["quantidade"].ToString());
                    Produto.estoque_id = Convert.ToInt32(reader["estoque_id"].ToString());
                    lstProduto.Add(Produto);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Produtoes por Nome...");
            }
            finally
            {
                conexao.Close();
            }

            return lstProduto;
        }

        public void Insert(Model.Produto produto)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Produto values (@nome,@valor,@quantidade,@tipo,@estoque_id);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", produto.id);
            cmd.Parameters.AddWithValue("@nome", produto.nome);
            cmd.Parameters.AddWithValue("@valor", produto.valor);
            cmd.Parameters.AddWithValue("@quantidade", produto.quantidade);
            cmd.Parameters.AddWithValue("@tipo", produto.tipo);
            cmd.Parameters.AddWithValue("@estoque_id", produto.estoque_id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na inserção de Produtos...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(Model.Produto produto)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Produto set Nome=@nome, Valor=@valor, Quantidade=@quantidade, Tipo=@tipo";
            sql += " where idProduto=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", produto.id);
            cmd.Parameters.AddWithValue("@nome", produto.nome);
            cmd.Parameters.AddWithValue("@valor", produto.valor);
            cmd.Parameters.AddWithValue("@quantidade", produto.quantidade);
            cmd.Parameters.AddWithValue("@tipo", produto.tipo);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na atualização de Produtos");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(Model.Produto produto)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Produto where idProduto=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", produto.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na Remoção de Produtos");
            }
            finally
            {
                conexao.Close();
            }

        }

    }
}




