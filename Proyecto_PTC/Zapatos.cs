using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

namespace Proyecto_PTC
{
    public class Zapatos
    {
        public double Precio { get; set; }
        public string Descripcion { get; set; }
        public int Cantidad { get; set; }
        public string Nombre { get; set; }
        public string Categoria { get; set; }
        public object Img { get; set; }

        public Zapatos () { }

        public Zapatos( double pPrecio, string pDescripcion, int pCantidad, string pNombre, string PCategoria, object pImg)
        {
            
            this.Precio = pPrecio;
            this.Descripcion = pDescripcion;
            this.Cantidad = pCantidad;
            this.Nombre = pNombre;
            this.Categoria = PCategoria;
            this.Img = pImg;
        }


    }

    
}