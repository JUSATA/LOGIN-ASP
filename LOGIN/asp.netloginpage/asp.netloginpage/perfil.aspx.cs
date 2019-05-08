using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.netloginpage
{
    public partial class perfil : System.Web.UI.Page
    {
        string path;
        string path2;
        string path3;
        int id;
        int id3;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            using (SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-GN1S5UA\SERVER;Initial Catalog=GestionCitas;Integrated Security=SSPI;"))
            {

       
                if (!this.IsPostBack)
                {
                    {

                        using (SqlCommand cmd = new SqlCommand("SELECT Id,Pais FROM Pais"))
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.Connection = cn;
                            cn.Open();
                            Select4.DataSource = cmd.ExecuteReader();
                            Select4.DataTextField = "Pais";
                            Select4.DataValueField = "Id";
                            Select4.DataBind();
                            cn.Close();
                        }

                        using (SqlCommand cmd = new SqlCommand("SELECT Id,Aficcion FROM Aficcion"))
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.Connection = cn;
                            cn.Open();
                            Select1.DataSource = cmd.ExecuteReader();
                            Select1.DataTextField = "Aficcion";
                            Select1.DataValueField = "Id";
                            Select1.DataBind();
                            cn.Close();
                        }

                        using (SqlCommand cmd = new SqlCommand("SELECT Id,Educacion FROM Educacion"))
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.Connection = cn;
                            cn.Open();
                            Select5.DataSource = cmd.ExecuteReader();
                            Select5.DataTextField = "Educacion";
                            Select5.DataValueField = "Id";
                            Select5.DataBind();
                            cn.Close();
                        }
                        using (SqlCommand cmd = new SqlCommand("SELECT Id,Contextura FROM Contextura"))
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.Connection = cn;
                            cn.Open();
                            editprefixes.DataSource = cmd.ExecuteReader();
                            editprefixes.DataTextField = "Contextura";
                            editprefixes.DataValueField = "Id";
                            editprefixes.DataBind();
                            cn.Close();
                        }
                        using (SqlCommand cmd = new SqlCommand("SELECT Id,Sexo FROM Sexo"))
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.Connection = cn;
                            cn.Open();
                            Select3.DataSource = cmd.ExecuteReader();
                            Select3.DataTextField = "Sexo";
                            Select3.DataValueField = "Id";
                            Select3.DataBind();
                            cn.Close();
                        }
                    }
                }
            }
        }
        protected void ingresar_Click(object sender, EventArgs e)
        {
           

            using (SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-GN1S5UA\SERVER;Initial Catalog=GestionCitas;Integrated Security=SSPI;"))
            {
                FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/personal/" + FileUpload1.FileName.ToString());
                path = "personal/" + FileUpload1.FileName.ToString();

                FileUpload2.SaveAs(Request.PhysicalApplicationPath + "/aficcion/" + FileUpload2.FileName.ToString());
                path2 = "aficcion/" + FileUpload2.FileName.ToString();

                FileUpload3.SaveAs(Request.PhysicalApplicationPath + "/lugar/" + FileUpload3.FileName.ToString());
                path3 = "lugar/" + FileUpload3.FileName.ToString();
               
                string query = "INSERT INTO [dbo].[Perfil] ([Nombre],[IdPais],[IdSexo],[FechaNacimiento],[Correo],[IdEducacion],[IdSexoInteres],[IdContexturaInteres],[Clave],ruta,[IdContextura]) VALUES(@Nombre,'" + Select4.Value + "',1,@FechaNacimiento,@Correo,@edu,@interes,2,@Clave,@ruta,@contextura)";

                

                string query4= "INSERT INTO [dbo].[Lugar] ([Lugar],[IdPais]) VALUES ('" + lugar.Value + "','" + Select4.Value + "')";
                //id = id - 1;
                using (SqlCommand cmd = new SqlCommand(query, cn))
                {

                    // add parameters and their valuesid UserID
                    cmd.Parameters.Add("@nombre", System.Data.SqlDbType.VarChar, 50).Value = Nombre.Value;
                    cmd.Parameters.Add("@FechaNacimiento", System.Data.SqlDbType.Date).Value = fecha.Value;
                    cmd.Parameters.Add("@correo", System.Data.SqlDbType.VarChar, 50).Value = correo.Value;
                    cmd.Parameters.Add("@edu", System.Data.SqlDbType.Int).Value = Select5.Value;
                    cmd.Parameters.Add("@interes", System.Data.SqlDbType.Int).Value = Select3.Value;
                    cmd.Parameters.Add("@clave", System.Data.SqlDbType.VarChar, 20).Value = clave.Value;
                    cmd.Parameters.Add("@ruta", System.Data.SqlDbType.VarChar, 100).Value = path.ToString();
                    cmd.Parameters.Add("@contextura", System.Data.SqlDbType.Int).Value = editprefixes.Value;
                    //  cmd.Parameters.AddWithValue("@foto", imgByte);
                    //   command.Parameters.Add("@foto", System.Data.SqlDbType.Image, img).Value = photo;
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }
                cn.Open();
                SqlCommand ca = cn.CreateCommand();
                ca.CommandText = "SELECT MAX(Id) FROM perfil";
                id = Convert.ToInt32(ca.ExecuteScalar());
                //id = id ;
                cn.Close();
                string query2 = "INSERT INTO [dbo].[PerfilAficcion] (IdPerfil,[ruta],[IdAficcion]) VALUES ('" + id + "',@ruta,'" + Select1.Value + "')";
                using (SqlCommand cmd = new SqlCommand(query2, cn))
                {

                    // add parameters and their valuesid UserID
                    cmd.Parameters.Add("@ruta", System.Data.SqlDbType.VarChar, 200).Value = path2.ToString();
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }

                using (SqlCommand cmd = new SqlCommand(query4, cn))
                {

                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }


                cn.Open();
                SqlCommand caa = cn.CreateCommand();
                caa.CommandText = "SELECT MAX(Id) FROM Lugar";
                id3 = Convert.ToInt32(caa.ExecuteScalar());
                // id3 = id3 - 1;
                cn.Close();
                string query3 = "INSERT INTO [dbo].[PerfilLugar] ([IdPerfil],[ruta],[IdLugar]) VALUES ('" + id + "',@ruta,'" + id3 + "')";
                using (SqlCommand cmd = new SqlCommand(query3, cn))
                {

                    // add parameters and their valuesid UserID
                    cmd.Parameters.Add("@ruta", System.Data.SqlDbType.VarChar, 200).Value = path3.ToString();
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }
                lblErrorMessage.Attributes.Add("style", "display:normal");
                Nombre.Value="";
                fecha.Value="";
                correo.Value="";
                clave.Value="";
            }
        }

    }
}