using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamingHouse.Camadas.Model
{
    public class Estoque
    {
        public int id { get; set; }
        public int entrada { get; set; }
        public int fornecedor_id { get; set; }
        public int produto_id { get; set; }
    }
}