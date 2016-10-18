using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.DAL
{
    public class Funcionario
    {
        private string strCon = Conexao.getConect();

        public List<Model.Funcionario> Select()
        {
            List<Model.Funcionario> lstFuncionario = new List<Model.Funcionario>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Funcionario;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Funcionario funcionario = new Model.Funcionario();
                    funcionario.id = Convert.ToInt32(reader[0].ToString());
                    funcionario.nome = reader["nome"].ToString();
                    funcionario.rg = reader["rg"].ToString();
                    funcionario.cpf = reader["cpf"].ToString();
                    funcionario.cargo_id = Convert.ToInt32(reader["cargo_id"].ToString());
                    funcionario.email = reader["email"].ToString();
                    funcionario.nascimento = Convert.ToDateTime(reader["nascimento"].ToString());
                    lstFuncionario.Add(funcionario);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Funcionários...");
            }
            finally
            {
                conexao.Close();
            }

            return lstFuncionario;
        }


        public List<Model.Funcionario> SelectById(int id)
        {
            List<Model.Funcionario> lstFuncionario = new List<Model.Funcionario>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Funcionario Where idFuncionario = @id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", id);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Funcionario funcionario = new Model.Funcionario();
                    funcionario.id = Convert.ToInt32(reader[0].ToString());
                    funcionario.nome = reader["nome"].ToString();
                    funcionario.rg = reader["rg"].ToString();
                    funcionario.cpf = reader["cpf"].ToString();
                    funcionario.cargo_id = Convert.ToInt32(reader["cargo_id"].ToString());
                    funcionario.email = reader["email"].ToString();
                    funcionario.nascimento = Convert.ToDateTime(reader["nascimento"].ToString());
                    lstFuncionario.Add(funcionario);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Funcionários por ID...");
            }
            finally
            {
                conexao.Close();
            }

            return lstFuncionario;
        }


        public List<Model.Funcionario> SelectByNome(string nome)
        {
            List<Model.Funcionario> lstFuncionario = new List<Model.Funcionario>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Funcionario where (Nome like @nome);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@nome", nome.Trim() + "%");
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Funcionario funcionario = new Model.Funcionario();
                    funcionario.id = Convert.ToInt32(reader[0].ToString());
                    funcionario.nome = reader["nome"].ToString();
                    funcionario.rg = reader["rg"].ToString();
                    funcionario.cpf = reader["cpf"].ToString();
                    funcionario.cargo_id = Convert.ToInt32(reader["cargo_id"].ToString());
                    funcionario.email = reader["email"].ToString();
                    funcionario.nascimento = Convert.ToDateTime(reader["nascimento"].ToString());
                    lstFuncionario.Add(funcionario);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Funcionários por Nome...");
            }
            finally
            {
                conexao.Close();
            }

            return lstFuncionario;
        }

        public void Insert(Model.Funcionario funcionario)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Funcionario values (@nome, @rg, @cpf, @nascimento, @login, @senha, @cargo_id, @email);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@nome", funcionario.nome);
            cmd.Parameters.AddWithValue("@rg", funcionario.rg);
            cmd.Parameters.AddWithValue("@cpf", funcionario.cpf);
            cmd.Parameters.AddWithValue("@nascimento", funcionario.nascimento);
            cmd.Parameters.AddWithValue("@login", funcionario.login);
            cmd.Parameters.AddWithValue("@senha", funcionario.senha);
            cmd.Parameters.AddWithValue("@cargo_id", funcionario.cargo_id);
            cmd.Parameters.AddWithValue("@email", funcionario.email);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na inserção de Funcionárioss...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(Model.Funcionario funcionario)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Funcionario set nome=@nome, ";
            sql += " RG=@rg, CPF=@cpf, ";
            sql += " Nascimento=@nascimento, Login=@login, Senha=@senha, Cargo_id = @cargo_id ,Email = @email ";
            sql += " where idFuncionario=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", funcionario.nome);
            cmd.Parameters.AddWithValue("@nome", funcionario.nome);
            cmd.Parameters.AddWithValue("@rg", funcionario.rg);
            cmd.Parameters.AddWithValue("@cpf", funcionario.cpf);
            cmd.Parameters.AddWithValue("@nascimento", funcionario.nascimento);
            cmd.Parameters.AddWithValue("@login", funcionario.login);
            cmd.Parameters.AddWithValue("@senha", funcionario.senha);
            cmd.Parameters.AddWithValue("@cargo_id", funcionario.cargo_id);
            cmd.Parameters.AddWithValue("@email", funcionario.email);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na atualização de Funcionárioss");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void UpdateAdm(Model.Funcionario funcionario)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Funcionario set nome=@nome, ";
            sql += " RG=@rg, CPF=@cpf, ";
            sql += " Nascimento=@nascimento,Email = @email ";
            sql += " where idFuncionario=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", funcionario.nome);
            cmd.Parameters.AddWithValue("@nome", funcionario.nome);
            cmd.Parameters.AddWithValue("@rg", funcionario.rg);
            cmd.Parameters.AddWithValue("@cpf", funcionario.cpf);
            cmd.Parameters.AddWithValue("@nascimento", funcionario.nascimento);
            cmd.Parameters.AddWithValue("@email", funcionario.email);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na atualização de Funcionárioss");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(Model.Funcionario funcionario)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Funcionario where idFuncionario=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", funcionario.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na Remoção de Funcionários");
            }
            finally
            {
                conexao.Close();
            }

        }

    }
}




