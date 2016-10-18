using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.DAL
{
    public class Estoque
    {
        private string strCon = Conexao.getConect();

        public List<Model.Estoque> Select()
        {
            List<Model.Estoque> lstEstoque = new List<Model.Estoque>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Estoque;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Estoque estoque = new Model.Estoque();
                    estoque.id = Convert.ToInt32(reader[0].ToString());
                    estoque.entrada = Convert.ToInt32(reader["entrada"].ToString());
                    estoque.fornecedor_id = Convert.ToInt32(reader["fornecedor_id"].ToString());
                    estoque.produto_id = Convert.ToInt32(reader["fornecedor_id"].ToString());
                    lstEstoque.Add(estoque);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Estoques...");
            }
            finally
            {
                conexao.Close();
            }

            return lstEstoque;
        }


        public List<Model.Estoque> SelectById(int id)
        {
            List<Model.Estoque> lstEstoque = new List<Model.Estoque>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Estoque Where idEstoque = @id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", id);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Estoque Estoque = new Model.Estoque();
                    Estoque.id = Convert.ToInt32(reader[0].ToString());
                    Estoque.entrada = Convert.ToInt32(reader["entrada"].ToString());
                    Estoque.fornecedor_id = Convert.ToInt32(reader["fornecedor_id"].ToString());
                    Estoque.produto_id = Convert.ToInt32(reader["produto_id"].ToString());
                    lstEstoque.Add(Estoque);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Estoques por ID...");
            }
            finally
            {
                conexao.Close();
            }

            return lstEstoque;
        }


        public List<Model.Estoque> SelectByFornecedor(int fornecedor)
        {
            List<Model.Estoque> lstEstoque = new List<Model.Estoque>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Estoque Where Fornecedor_id = @fornecedor;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@fornecedor", fornecedor);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Estoque Estoque = new Model.Estoque();
                    Estoque.id = Convert.ToInt32(reader[0].ToString());
                    Estoque.entrada = Convert.ToInt32(reader["entrada"].ToString());
                    Estoque.fornecedor_id = Convert.ToInt32(reader["fornecedor_id"].ToString());
                    Estoque.produto_id = Convert.ToInt32(reader["produto_id"].ToString());
                    lstEstoque.Add(Estoque);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Estoques por Fornecedor...");
            }
            finally
            {
                conexao.Close();
            }

            return lstEstoque;
        }
        
        public void Insert(Model.Estoque estoque)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Estoque values (@entrada,@fornecedor_id,@produto_id);";
            sql += "Update Produto set Quantidade = Quantidade + @entrada where id = @produto_id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@entrada", estoque.entrada);
            cmd.Parameters.AddWithValue("@fornecedor_id", estoque.fornecedor_id);
            cmd.Parameters.AddWithValue("@produto_id", estoque.produto_id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na inserção de Estoques...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(Model.Estoque estoque)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Estoque set Entrada=@entrada, Fornecedor_id=@fornecedor_id, Produto_id = @produto_id ";
            sql += " where idEstoque=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", estoque.id);
            cmd.Parameters.AddWithValue("@entrada", estoque.entrada);
            cmd.Parameters.AddWithValue("@fornecedor_id", estoque.fornecedor_id);
            cmd.Parameters.AddWithValue("@produto_id", estoque.produto_id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na atualização de estoques");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(Model.Estoque estoque)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Estoque where idEstoque=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", estoque.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na Remoção de Estoques");
            }
            finally
            {
                conexao.Close();
            }

        }

    }
}




