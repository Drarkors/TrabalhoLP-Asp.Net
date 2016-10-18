using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.DAL
{
    public class Cargo
    {
        private string strCon = Conexao.getConect();

        public List<Model.Cargo> Select()
        {
            List<Model.Cargo> lstCargo = new List<Model.Cargo>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Cargo;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Cargo cargo = new Model.Cargo();
                    cargo.id = Convert.ToInt32(reader[0].ToString());
                    cargo.cargo = reader["cargo"].ToString();
                    lstCargo.Add(cargo);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Cargos...");
            }
            finally
            {
                conexao.Close();
            }

            return lstCargo;
        }


        public List<Model.Cargo> SelectById(int id)
        {
            List<Model.Cargo> lstCargo = new List<Model.Cargo>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "SELECT * from Cargo Where idCargo = @id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", id);
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Cargo Cargo = new Model.Cargo();
                    Cargo.id = Convert.ToInt32(reader[0].ToString());
                    Cargo.cargo = reader["cargo"].ToString();
                    lstCargo.Add(Cargo);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Cargos por ID...");
            }
            finally
            {
                conexao.Close();
            }

            return lstCargo;
        }


        public List<Model.Cargo> SelectByCargo(string cargo)
        {
            List<Model.Cargo> lstCargo = new List<Model.Cargo>();
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Select * from Cargo Where Cargo = @cargo;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@cargo", cargo.Trim() + "%");
            conexao.Open();
            try
            {
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while (reader.Read())
                {
                    Model.Cargo Cargo = new Model.Cargo();
                    Cargo.id = Convert.ToInt32(reader[0].ToString());
                    Cargo.cargo = reader["cargo"].ToString();
                    lstCargo.Add(Cargo);
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na Seleção de Cargos por Nome...");
            }
            finally
            {
                conexao.Close();
            }

            return lstCargo;
        }

        public void Insert(Model.Cargo cargo)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Insert into Cargo values (@cargo);";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@cargo", cargo.cargo);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Deu erro na inserção de Cargos...");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Update(Model.Cargo cargo)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Update Cargo set Cargo=@cargo, ";
            sql += " where idCargo=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", cargo.id);
            cmd.Parameters.AddWithValue("@cargo", cargo.cargo);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na atualização de Cargos");
            }
            finally
            {
                conexao.Close();
            }
        }

        public void Delete(Model.Cargo cargo)
        {
            SqlConnection conexao = new SqlConnection(strCon);
            string sql = "Delete from Cargo where idCargo=@id;";
            SqlCommand cmd = new SqlCommand(sql, conexao);
            cmd.Parameters.AddWithValue("@id", cargo.id);
            conexao.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("Erro na Remoção de Cargos");
            }
            finally
            {
                conexao.Close();
            }

        }

    }
}




