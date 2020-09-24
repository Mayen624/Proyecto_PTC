using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Web;
using MySql.Data.MySqlClient;
namespace Proyecto_PTC
{
    public class Conexiones
    {
        public static int UsuariosRepetidos(string usuario, string contra, string nombre, string apellido, string correo)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT type FROM usuarios WHERE Nombre_Usuario='" + usuario + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                //no es necasario validar aqui ya que en el formulario Registro tenemos alertas si valor = 0
            }
            else
            {
                Conexiones.AgregarUsuario(nombre, apellido, usuario, contra, correo);
            }
            conexion.Close();
            return valor;
        }
        //********************************************************************************
        public static int AgregarUsuario(string nombre, string apellido, string usuario, string contra, string correo)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into usuarios (Nombre,Apellido,Nombre_Usuario,Password,Correo,type,status) values('{0}','{1}','{2}','{3}','{4}',2,1)", nombre, apellido, usuario, contra, correo), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }
        //********************************************************************************
        //Carrito de compras.
        public static int AgregarZapatos(Zapatos shoes)
        {
            int retorno = 0;
            MySqlCommand comado = new MySqlCommand(string.Format("Insert into zapatos (Precio, Descripcion, Cantidad, Nombre, Categoria, Img) values('{0}','{1}','{2}','{3}','{4}',')", shoes.Precio, shoes.Descripcion, shoes.Cantidad, shoes.Nombre, shoes.Categoria), datos.ObtenerConexion());
            retorno = comado.ExecuteNonQuery();
            return retorno;
        }
        //*********************************************************************************
        public static int AgregarCarrito(Carrito Trolley)
        {
            int retorno = 0;
            MySqlCommand comado = new MySqlCommand(string.Format("Insert into carrito (id, id_usuario, id_zapato, cantidad, precioAcumulado ) values('{0}','{1}','{2}','{3}',')", Trolley.id, Trolley.id_usuario, Trolley.id_zapato, Trolley.cantidad, Trolley.precioAcumulado), datos.ObtenerConexion());
            retorno = comado.ExecuteNonQuery();
            return retorno;

        }

        public static int NuevaCompra(Compra Buy)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("insert into compra (id, CodigoVenta, id_zapato, id_usuario, total ) values ('{0}','{1}','{2}','{3}',')", Buy.id, Buy.codigoVenta, Buy.id_zapato, Buy.id_usuario, Buy.total), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();
            return retorno; 
        }

        public static int AgregarTalla(Talla talla)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("insert into talla (id, talla) values ('{0}','{1}',')", talla.id, talla.talla), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //public List<Zapatos> mostrarZapatos()
        //{
        //    MySqlCommand comando = new MySqlCommand(string.Format("Select * FROM zapatos"));
        //    MySqlDataReader list = comando.ExecuteReader();
        //    while (list.Read())
        //    {
        //        Console.Out(list["nombre"]);
        //    }
        //}
    }
}
