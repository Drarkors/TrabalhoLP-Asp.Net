using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.DAL
{
    public class Cliente
    {
        private string strCon = Conexao.getConect();

        public List<Model.Cliente> Select()
        {
            List<Model.Cliente> lstCliente = new List<Model.Cliente>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Cliente";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Cliente cliente = new Model.Cliente();
                    cliente.id = Convert.ToInt32(reader[0].ToString());
                    cliente.nome = reader["nome"].ToString();
                    cliente.rg = reader["rg"].ToString();
                    cliente.cpf = reader["cpf"].ToString();
                    cliente.nascimento = Convert.ToDateTime(reader["nascimento"].ToString());
                    lstCliente.Add(cliente);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Clientes...");
            }
            finally
            {
                conexao.Close();
            }

            return lstCliente;
        }


        public List<Model.Cliente> SelectById(int id)
        {
            List<Model.Cliente> lstCliente = new List<Model.Cliente>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Cliente Where idCliente = @id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", id);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Cliente cliente = new Model.Cliente();
                    cliente.id = Convert.ToInt32(reader[0].ToString());
                    cliente.nome = reader["nome"].ToString();
                    cliente.rg = reader["rg"].ToString();
                    cliente.cpf = reader["cpf"].ToString();
                    cliente.email = reader["email"].ToString();
                    cliente.nascimento = Convert.ToDateTime(reader["nascimento"].ToString());
                    lstCliente.Add(cliente);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Clientes por ID...");
            }
            finally
            {
                conexao.Close();
            }

            return lstCliente;
        }


        public List<Model.Cliente> SelectByNome(string nome)
        {
            List<Model.Cliente> lstCliente = new List<Model.Cliente>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Cliente Where (Nome like @nome);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@nome", nome.Trim() + "%");
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Cliente cliente = new Model.Cliente();
                    cliente.id = Convert.ToInt32(reader[0].ToString());
                    cliente.nome = reader["nome"].ToString();
                    cliente.rg = reader["rg"].ToString();
                    cliente.cpf = reader["cpf"].ToString();
                    cliente.email = reader["email"].ToString();
                    cliente.nascimento = Convert.ToDateTime(reader["nascimento"].ToString());
                    lstCliente.Add(cliente);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Clientes por Nome...");
            }
            finally
            {
                conexao.Close();
            }

            return lstCliente;
        }

        public List<Model.Cliente> SelectByLogin(string login)
        {
            List<Model.Cliente> lstCliente = new List<Model.Cliente>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Cliente Where (Login like @login);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@login", login.Trim() + "%");
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Cliente cliente = new Model.Cliente();
                    cliente.id = Convert.ToInt32(reader[0].ToString());
                    cliente.nome = reader["nome"].ToString();
                    cliente.rg = reader["rg"].ToString();
                    cliente.cpf = reader["cpf"].ToString();
                    cliente.email = reader["email"].ToString();
                    cliente.nascimento = Convert.ToDateTime(reader["nascimento"].ToString());
                    lstCliente.Add(cliente);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Clientes por Nome...");
            }
            finally
            {
                conexao.Close();
            }

            return lstCliente;
        }

        public string getLog(string log)
        {

            return log;
        }

        public void Insert(Model.Cliente cliente)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Cliente values (@nome, @rg, @cpf, @nascimento, @login, @senha, @email);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@nome", cliente.nome);
            cmd.Parameters.AddWithValue("@rg", cliente.rg);
            cmd.Parameters.AddWithValue("@cpf", cliente.cpf);
            cmd.Parameters.AddWithValue("@nascimento", cliente.nascimento);
            cmd.Parameters.AddWithValue("@login", cliente.login);
            cmd.Parameters.AddWithValue("@senha", cliente.senha);
            cmd.Parameters.AddWithValue("@email", cliente.email);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na inserção de Clientes...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(Model.Cliente cliente)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Cliente set nome=@nome, ";
            sql += " RG=@rg, CPF=@cpf, ";
            sql += " Nascimento=@nascimento, Login=@login, Senha=@senha, Email=@email ";
            sql += " where idCliente=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", cliente.id);
            cmd.Parameters.AddWithValue("@nome", cliente.nome);
            cmd.Parameters.AddWithValue("@rg", cliente.rg);
            cmd.Parameters.AddWithValue("@cpf", cliente.cpf);
            cmd.Parameters.AddWithValue("@nascimento", cliente.nascimento);
            cmd.Parameters.AddWithValue("@login", cliente.login);
            cmd.Parameters.AddWithValue("@senha", cliente.login);
            cmd.Parameters.AddWithValue("@email", cliente.login);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na atualização de Clientes");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void UpdateAdm(Model.Cliente cliente)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Cliente set nome=@nome, ";
            sql += " RG=@rg, CPF=@cpf, ";
            sql += " Nascimento=@nascimento, Email=@email ";
            sql += " where idCliente=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", cliente.id);
            cmd.Parameters.AddWithValue("@nome", cliente.nome);
            cmd.Parameters.AddWithValue("@rg", cliente.rg);
            cmd.Parameters.AddWithValue("@cpf", cliente.cpf);
            cmd.Parameters.AddWithValue("@nascimento", cliente.nascimento);
            cmd.Parameters.AddWithValue("@email", cliente.login);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na atualização de Clientes");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(Model.Cliente cliente)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Cliente where idCliente=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", cliente.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na Remoção de Clientes");
            }
            finally
            {
                conexao.Close();
            }

        }

    }
}




