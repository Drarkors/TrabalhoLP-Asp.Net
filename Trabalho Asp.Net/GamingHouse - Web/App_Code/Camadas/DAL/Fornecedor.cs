using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.DAL
{
    public class Fornecedor
    {
        private string strCon = Conexao.getConect();

        public List<Model.Fornecedor> Select()
        {
            List<Model.Fornecedor> lstFornecedor = new List<Model.Fornecedor>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Fornecedor;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Fornecedor fornecedor = new Model.Fornecedor();
                    fornecedor.id = Convert.ToInt32(reader[0].ToString());
                    fornecedor.nome = reader["nome"].ToString();
                    lstFornecedor.Add(fornecedor);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Fornecedores...");
            }
            finally
            {
                conexao.Close();
            }

            return lstFornecedor;
        }


        public List<Model.Fornecedor> SelectById(int id)
        {
            List<Model.Fornecedor> lstFornecedor = new List<Model.Fornecedor>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Fornecedor Where idFornecedor = @id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", id);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Fornecedor Fornecedor = new Model.Fornecedor();
                    Fornecedor.id = Convert.ToInt32(reader[0].ToString());
                    Fornecedor.nome = reader["nome"].ToString();
                    lstFornecedor.Add(Fornecedor);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Fornecedores por ID...");
            }
            finally
            {
                conexao.Close();
            }

            return lstFornecedor;
        }


        public List<Model.Fornecedor> SelectByNome(string nome)
        {
            List<Model.Fornecedor> lstFornecedor = new List<Model.Fornecedor>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Fornecedor Where Nome = @nome;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@nome", nome.Trim() + "%");
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Fornecedor Fornecedor = new Model.Fornecedor();
                    Fornecedor.id = Convert.ToInt32(reader[0].ToString());
                    Fornecedor.nome = reader["nome"].ToString();
                    lstFornecedor.Add(Fornecedor);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Fornecedores por Nome...");
            }
            finally
            {
                conexao.Close();
            }

            return lstFornecedor;
        }

        public void Insert(Model.Fornecedor fornecedor)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Fornecedor values (@nome,@cnpj);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", fornecedor.id);
            cmd.Parameters.AddWithValue("@nome", fornecedor.nome);
            cmd.Parameters.AddWithValue("@cnpj", fornecedor.cnpj);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na inserção de Fornecedores...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(Model.Fornecedor fornecedor)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Fornecedor set Nome=@nome, CNPJ=@cnpj";
            sql += " where idFornecedor=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", fornecedor.id);
            cmd.Parameters.AddWithValue("@nome", fornecedor.nome);
            cmd.Parameters.AddWithValue("@cnpj", fornecedor.cnpj);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na atualização de Fornecedores");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(Model.Fornecedor fornecedor)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Fornecedor where idFornecedor=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", fornecedor.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na Remoção de Fornecedores");
            }
            finally
            {
                conexao.Close();
            }

        }

    }
}




