using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_PTC
{
    public class Compra
    {
        public int id { get; set; }
        public string codigoVenta { get; set; }
        public int id_zapato { get; set; }
        public int id_usuario { get; set; }
        public int total { get; set; }


        public Compra() { }

        public Compra(int pid, string pcodigoVenta, int pid_zapapto, int pid_usuario, int ptotal)
        {

            this.id = pid;
            this.codigoVenta = pcodigoVenta;
            this.id_zapato = pid_zapapto;
            this.id_usuario = pid_usuario;
            this.total = ptotal;
        }

    }
}