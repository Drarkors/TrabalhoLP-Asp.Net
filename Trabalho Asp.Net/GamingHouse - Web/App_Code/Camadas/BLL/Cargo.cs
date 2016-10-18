using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.BLL
{
    public class Cargo
    {
        public List<Model.Cargo> Select()
        {
            DAL.Cargo dalCli = new DAL.Cargo();

            return dalCli.Select();
        }

        public List<Model.Cargo> SelectById(int id)
        {
            DAL.Cargo dalCli = new DAL.Cargo();

            return dalCli.SelectById(id);
        }

        public List<Model.Cargo> SelectByCargo(string cargo)
        {
            DAL.Cargo dalCli = new DAL.Cargo();

            return dalCli.SelectByCargo(cargo);
        }

        public void Insert(Model.Cargo cargo)
        {
            DAL.Cargo dalCli = new DAL.Cargo();
            //
            dalCli.Insert(cargo);
        }

        public void Update(Model.Cargo cargo)
        {
            DAL.Cargo dalCli = new DAL.Cargo();
            dalCli.Update(cargo);
        }

        public void Delete(Model.Cargo cargo)
        {
            DAL.Cargo dalCli = new DAL.Cargo();

            dalCli.Delete(cargo);
        }
    }
}
