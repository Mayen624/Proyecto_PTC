using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_PTC
{
    public partial class Carrito1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection con = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT SUM(precioAcumulado) FROM carrito", con);
            MySqlDataReader reader = cmd.ExecuteReader();

            float precio = 0; 

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    precio = reader.GetFloat(0);
                }
            }
            Label2.Text = precio.ToString();
        }
        protected void btnButton1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('asdas');</script>");
            var button = (Button)sender;
            var id_producto = button.CommandArgument;

            MySqlConnection con = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("INSERT INTO carrito (id_usuario, id_zapato, cantidad) VALUES ('19','" + id_producto + "', 1)", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            //Response.Write("<script>alert('" + id_producto + "');</script>");
        }
        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "delete") return;
            int id = Convert.ToInt32(e.CommandArgument);
            MySqlConnection con = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("DELETE FROM carrito WHERE id = " + id + "", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            // do something
        }
    }
}