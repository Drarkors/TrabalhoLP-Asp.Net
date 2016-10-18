using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.Model
{
    public class Cliente
    {
        public int id { get; set; }
        public string nome { get; set; }
        public string rg { get; set; }
        public string cpf { get; set; }
        public DateTime nascimento { get; set; }
        public string login { get; set; }
        public string senha { get; set; }
        public int endereco_id { get; set; }
        public string email { get; set; }
    }
}