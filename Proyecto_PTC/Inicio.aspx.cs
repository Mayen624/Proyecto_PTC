using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace Proyecto_PTC
{
    public partial class Inicio : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=frankgael; Uid=root; pwd=;");

        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    string nombre = Session["username"].ToString();
            //}
            //catch (Exception ex)
            //{
            //    Response.Redirect("Login.aspx");
            //}

            //PRUEBA
            if (Session["username"] == null)
            {
                Session.Remove("username");
                Response.Redirect("Login.aspx");
            }
            MySqlConnection con = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT z.* FROM zapatos z WHERE z.Id_zapato IN (SELECT c.id_zapato FROM compra c GROUP BY c.id_zapato HAVING COUNT(*)>0) LIMIT 8", con);
            MySqlDataReader reader = cmd.ExecuteReader();
            ListView1.DataSource = reader;
            ListView1.DataBind();
            reader.Close();
            con.Close();


        }

        protected void btnregistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Remove("username");
            Response.Redirect("Login.aspx");

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
            MySqlCommand cmd_zapato = new MySqlCommand(" SELECT * FROM zapatos WHERE Id_zapato = '" +id_producto+"'", con);
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
            MySqlCommand cmd = new MySqlCommand("INSERT INTO carrito (id_usuario, id_zapato, cantidad, precioAcumulado) VALUES ('"+Session["id_user"]+"','" + id_producto + "', 1, "+precio+")", con);
            cmd.ExecuteNonQuery();
            con.Close();
            //GridView1.DataBind();
            //Response.Write("<script>alert('" + id_producto + "');</script>");
        }   

        protected void BtnCarrito(object sender, EventArgs e)
        {
            Response.Redirect("Carrito.aspx");
        }

        //protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName != "delete") return;
        //    int id = Convert.ToInt32(e.CommandArgument);
        //    MySqlConnection con = datos.ObtenerConexion();
        //    MySqlCommand cmd = new MySqlCommand("DELETE FROM carrito WHERE id = " + id + "", con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    GridView1.DataBind();
        //    // do something
        //}


    }
}

    
 
