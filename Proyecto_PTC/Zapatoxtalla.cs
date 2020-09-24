using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_PTC
{
    public class Zapatoxtalla
    {
        public  int id { get; set; }
        public int id_zapato { get; set; }
        public int id_talla { get; set; }

        public Zapatoxtalla() { }

        public Zapatoxtalla( int pid, int pid_zapato, int pid_talla)
        {
            this.id = pid;
            this.id_zapato = pid_zapato;
            this.id_talla = pid_talla;
        }
    }
}