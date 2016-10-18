using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.BLL
{
    public class Cliente
    {
        public List<Model.Cliente> Select()
        {
            DAL.Cliente dalCli = new DAL.Cliente();

            return dalCli.Select();
        }

        public List<Model.Cliente> SelectById(int id)
        {
            DAL.Cliente dalCli = new DAL.Cliente();

            return dalCli.SelectById(id);
        }

        public List<Model.Cliente> SelectByNome(string nome)
        {
            DAL.Cliente dalCli = new DAL.Cliente();

            return dalCli.SelectByNome(nome);
        }

        public void Insert(Model.Cliente cliente)
        {
            DAL.Cliente dalCli = new DAL.Cliente();
            //
            dalCli.Insert(cliente);
        }

        public void Update(Model.Cliente cliente)
        {
            DAL.Cliente dalCli = new DAL.Cliente();
            dalCli.Update(cliente);
        }

        public void UpdateAdm(Model.Cliente cliente)
        {
            DAL.Cliente dalCli = new DAL.Cliente();
            dalCli.UpdateAdm(cliente);
        }

        public void Delete(Model.Cliente cliente)
        {
            DAL.Cliente dalCli = new DAL.Cliente();

            dalCli.Delete(cliente);
        }
    }
}
