using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.BLL
{
    public class Funcionario
    {
        public List<Model.Funcionario> Select()
        {
            DAL.Funcionario dalCli = new DAL.Funcionario();

            return dalCli.Select();
        }

        public List<Model.Funcionario> SelectById(int id)
        {
            DAL.Funcionario dalCli = new DAL.Funcionario();

            return dalCli.SelectById(id);
        }

        public List<Model.Funcionario> SelectByNome(string nome)
        {
            DAL.Funcionario dalCli = new DAL.Funcionario();

            return dalCli.SelectByNome(nome);
        }

        public void Insert(Model.Funcionario funcionario)
        {
            DAL.Funcionario dalCli = new DAL.Funcionario();
            //
            dalCli.Insert(funcionario);
        }

        public void Update(Model.Funcionario funcionario)
        {
            DAL.Funcionario dalCli = new DAL.Funcionario();
            dalCli.Update(funcionario);
        }

        public void UpdateAdm(Model.Funcionario funcionario)
        {
            DAL.Funcionario dalCli = new DAL.Funcionario();
            dalCli.Update(funcionario);
        }

        public void Delete(Model.Funcionario funcionario)
        {
            DAL.Funcionario dalCli = new DAL.Funcionario();

            dalCli.Delete(funcionario);
        }
    }
}
