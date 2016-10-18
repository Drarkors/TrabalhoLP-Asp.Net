using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.Model
{
    public class Venda
    {
        public int id { get; set; }
        public float valor { get; set; }
        public int quantidade { get; set; }
        public int cliente_id { get; set; }
        public int produto_id { get; set; }
    }
}