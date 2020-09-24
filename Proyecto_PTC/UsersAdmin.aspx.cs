using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_PTC
{
    public partial class UsersAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

            String name = gridview1.SelectedRow.Cells[2].Text;
            String lastname = gridview1.SelectedRow.Cells[3].Text;
            String nameUser = gridview1.SelectedRow.Cells[4].Text;
            String password = gridview1.SelectedRow.Cells[5].Text;
            String correo = gridview1.SelectedRow.Cells[6].Text;
            String type = gridview1.SelectedRow.Cells[7].Text;
            String status = gridview1.SelectedRow.Cells[8].Text;

            HiddenField1.Value = gridview1.SelectedRow.Cells[1].Text;
            TextBox1.Text = name;
            TextBox2.Text = lastname;
            TextBox3.Text = nameUser;
            TextBox4.Text = password;
            TextBox5.Text = correo;
            TextBox6.Text = type;
            TextBox7.Text = status;

            //Response.Write("<script>alert('"+ desc + "');</script>");
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            String id = HiddenField1.Value;
            MySqlConnection con = datos.ObtenerConexion();
            if (id != null && id != "")
            {
                MySqlCommand cmd = new MySqlCommand("UPDATE usuarios SET Nombre = '" + TextBox1.Text + "', Apellido = '" + TextBox2.Text + "', Nombre_Usuario = '" + TextBox3.Text + "', Password = '" + TextBox4.Text + "', Correo = '" + TextBox5.Text + "', type = '" + TextBox6.Text + "' status = " + TextBox7.Text + id + " ", con);
                cmd.ExecuteNonQuery();
            }
            else
            {
                MySqlCommand cmd = new MySqlCommand("INSERT INTO usuarios( Nombre, Apellido, Nombre_Usuario, Password, Correo, type, status) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", con);
                cmd.ExecuteNonQuery();
            }
            con.Close();
            cleartextbox();
            gridview1.DataBind();
        }

        private void cleartextbox()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            HiddenField1.Value = "";
            gridview1.SelectedIndex = -1;

        }

        protected void Button2_Click(object sender, EventArgs e) // Boton Guardar & Eliminar
        {
            if (gridview1.SelectedValue != null)
            {
                String id = gridview1.SelectedValue.ToString();
                MySqlConnection con = datos.ObtenerConexion();
                MySqlCommand cmd = new MySqlCommand("DELETE FROM usuarios WHERE Id_usuario = " + id + "", con);
                cmd.ExecuteNonQuery();
                con.Close();
                gridview1.DataBind();
                cleartextbox();

            }


        }

    }
}