using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Proyecto_PTC
{
    public partial class ZapatosAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            String name = gridview1.SelectedRow.Cells[2].Text;
            String desc = gridview1.SelectedRow.Cells[3].Text;
            String can = gridview1.SelectedRow.Cells[4].Text;
            String pre = gridview1.SelectedRow.Cells[5].Text;
            String cat = gridview1.SelectedRow.Cells[6].Text;
            
            HiddenField1.Value = gridview1.SelectedRow.Cells[1].Text;
            TextBox1.Text = name;
            TextBox2.Text = desc;
            TextBox3.Text = can;
            TextBox4.Text = pre;
            TextBox5.Text = cat;

            //Response.Write("<script>alert('"+ desc + "');</script>");
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fn = "";
            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                string savelocation = Server.MapPath("Img\\Productos") + "\\" + fn;
                FileUpload1.PostedFile.SaveAs(savelocation);
            }
            String id = HiddenField1.Value;
            MySqlConnection con = datos.ObtenerConexion();
            if (id != null && id != "")
            {
                MySqlCommand cmd = new MySqlCommand("UPDATE zapatos SET Nombre = '"+ TextBox1.Text +"', Descripcion = '"+ TextBox2.Text +"', Cantidad = '"+ TextBox3.Text +"', Precio = '"+ TextBox4.Text +"', Categoria = '"+ TextBox5.Text +"', Img = '"+ fn + "' WHERE Id_zapato = "+id+" ", con);
                cmd.ExecuteNonQuery();
            }
            else {
                MySqlCommand cmd = new MySqlCommand("INSERT INTO zapatos(Nombre, Descripcion, Cantidad, Precio, Categoria, Img) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + fn + "')", con);
                cmd.ExecuteNonQuery();
            }
            con.Close();
            cleartextbox();
            gridview1.DataBind();
        }

        private void cleartextbox() {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            HiddenField1.Value = "";
            gridview1.SelectedIndex = -1;

        }
        
        protected void Button2_Click(object sender, EventArgs e) // Boton Guardar
        {
            if (gridview1.SelectedValue != null) {
                String id = gridview1.SelectedValue.ToString();
                MySqlConnection con = datos.ObtenerConexion();
                MySqlCommand cmd = new MySqlCommand("DELETE FROM zapatos WHERE Id_zapato = "+id+"", con);
                cmd.ExecuteNonQuery();
                con.Close();
                gridview1.DataBind();
                cleartextbox();

            }
            

        }

        
    }
}