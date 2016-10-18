using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.BLL
{
    public class Venda
    {
        public List<Model.Venda> Select()
        {
            DAL.Venda dalCli = new DAL.Venda();

            return dalCli.Select();
        }

        public List<Model.Venda> SelectById(int id)
        {
            DAL.Venda dalCli = new DAL.Venda();

            return dalCli.SelectById(id);
        }

        public List<Model.Venda> SelectByValor(float valor)
        {
            DAL.Venda dalCli = new DAL.Venda();

            return dalCli.SelectByValor(valor);
        }

        public void Insert(Model.Venda venda)
        {
            DAL.Venda dalCli = new DAL.Venda();
            //
            dalCli.Insert(venda);
        }

        public void Update(Model.Venda venda)
        {
            DAL.Venda dalCli = new DAL.Venda();
            dalCli.Update(venda);
        }

        public void Delete(Model.Venda venda)
        {
            DAL.Venda dalCli = new DAL.Venda();

            dalCli.Delete(venda);
        }
    }
}
