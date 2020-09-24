using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_PTC
{
    public class Carrito
    {
        public int id { get; set; }
        public int id_usuario { get; set; }
        public int id_zapato { get; set; }
        public int cantidad { get; set; }
        public float precioAcumulado { get; set; }
       

        public Carrito() { }

        public Carrito(int pid, int pid_usuario, int pid_zapapto, int pcantidad, float PprecioAcumulado)
        {

            this.id = pid;
            this.id_usuario = pid_usuario;
            this.id_zapato = pid_zapapto;
            this.cantidad = pcantidad;
            this.precioAcumulado = precioAcumulado; 
        }
        
    }
}