using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.BLL
{
    public class Fornecedor
    {
        public List<Model.Fornecedor> Select()
        {
            DAL.Fornecedor dalCli = new DAL.Fornecedor();

            return dalCli.Select();
        }

        public List<Model.Fornecedor> SelectById(int id)
        {
            DAL.Fornecedor dalCli = new DAL.Fornecedor();

            return dalCli.SelectById(id);
        }

        public List<Model.Fornecedor> SelectByNome(string nome)
        {
            DAL.Fornecedor dalCli = new DAL.Fornecedor();

            return dalCli.SelectByNome(nome);
        }

        public void Insert(Model.Fornecedor fornecedor)
        {
            DAL.Fornecedor dalCli = new DAL.Fornecedor();
            //
            dalCli.Insert(fornecedor);
        }

        public void Update(Model.Fornecedor fornecedor)
        {
            DAL.Fornecedor dalCli = new DAL.Fornecedor();
            dalCli.Update(fornecedor);
        }

        public void Delete(Model.Fornecedor fornecedor)
        {
            DAL.Fornecedor dalCli = new DAL.Fornecedor();

            dalCli.Delete(fornecedor);
        }
    }
}
