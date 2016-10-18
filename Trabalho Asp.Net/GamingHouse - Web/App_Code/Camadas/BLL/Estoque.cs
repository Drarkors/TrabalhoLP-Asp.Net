using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.BLL
{
    public class Estoque
    {
        public List<Model.Estoque> Select()
        {
            DAL.Estoque dalCli = new DAL.Estoque();

            return dalCli.Select();
        }

        public List<Model.Estoque> SelectById(int id)
        {
            DAL.Estoque dalCli = new DAL.Estoque();

            return dalCli.SelectById(id);
        }

        public List<Model.Estoque> SelectByFornecedor(int fornecedor)
        {
            DAL.Estoque dalCli = new DAL.Estoque();

            return dalCli.SelectByFornecedor(fornecedor);
        }

        public void Insert(Model.Estoque estoque)
        {
            DAL.Estoque dalCli = new DAL.Estoque();
            //
            dalCli.Insert(estoque);
        }

        public void Update(Model.Estoque estoque)
        {
            DAL.Estoque dalCli = new DAL.Estoque();
            dalCli.Update(estoque);
        }

        public void Delete(Model.Estoque estoque)
        {
            DAL.Estoque dalCli = new DAL.Estoque();

            dalCli.Delete(estoque);
        }
    }
}
