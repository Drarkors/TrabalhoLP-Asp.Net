using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.BLL
{
    public class Produto
    {
        public List<Model.Produto> Select()
        {
            DAL.Produto dalCli = new DAL.Produto();

            return dalCli.Select();
        }

        public List<Model.Produto> SelectById(int id)
        {
            DAL.Produto dalCli = new DAL.Produto();

            return dalCli.SelectById(id);
        }

        public List<Model.Produto> SelectByNome(string nome)
        {
            DAL.Produto dalCli = new DAL.Produto();

            return dalCli.SelectByNome(nome);
        }

        public void Insert(Model.Produto produto)
        {
            DAL.Produto dalCli = new DAL.Produto();
            //
            dalCli.Insert(produto);
        }

        public void Update(Model.Produto produto)
        {
            DAL.Produto dalCli = new DAL.Produto();
            dalCli.Update(produto);
        }

        public void Delete(Model.Produto produto)
        {
            DAL.Produto dalCli = new DAL.Produto();

            dalCli.Delete(produto);
        }
    }
}
