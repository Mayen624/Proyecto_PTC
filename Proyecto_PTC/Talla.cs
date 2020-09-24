using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_PTC
{
    public class Talla
    {
        public int id { get; set; }
        public string talla { get; set; }

        public Talla() { }

        public Talla(int pid, string ptalla)
        {

            this.id = pid;
            this.talla = ptalla;

        }
    }
}