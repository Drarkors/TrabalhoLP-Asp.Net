using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.Model
{
    public class Produto
    {
        public int id { get; set; }
        public string nome { get; set; }
        public float valor { get; set; }
        public int quantidade { get; set; }
        public int tipo { get; set; }
        public int estoque_id { get; set; }
    }
}