using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_PTC
{
    public partial class Niños : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Session.Remove("username");
                Response.Redirect("Login.aspx");
            }

            MySqlConnection con = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM zapatos WHERE categoria = 'Niños' or categoria = 'Unisex'", con);
            MySqlDataReader reader = cmd.ExecuteReader();
            ListView1.DataSource = reader;
            ListView1.DataBind();
            reader.Close();
            con.Close();
        }


        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnButton1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('asdas');</script>");
            var button = (Button)sender;
            var id_producto = button.CommandArgument;

            MySqlConnection con = datos.ObtenerConexion();
            MySqlCommand cmd_zapato = new MySqlCommand(" SELECT * FROM zapatos WHERE Id_zapato = '" + id_producto + "'", con);
            MySqlDataReader reader = cmd_zapato.ExecuteReader();
            float precio = 0;
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    precio = reader.GetFloat(1);
                }
            }
            reader.Close();
            MySqlCommand cmd = new MySqlCommand("INSERT INTO carrito (id_usuario, id_zapato, cantidad, precioAcumulado) VALUES ('" + Session["id_user"] + "','" + id_producto + "', 1, " + precio + ")", con);
            cmd.ExecuteNonQuery();
            con.Close();
            //GridView1.DataBind();
            //Response.Write("<script>alert('" + id_producto + "');</script>");
        }

        protected void BtnCarrito(object sender, EventArgs e)
        {
            Response.Redirect("Carrito.aspx");
        }
    }
}