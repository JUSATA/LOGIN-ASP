using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace asp.netloginpage
{
    public partial class empleado : System.Web.UI.Page
    {
       string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("login.aspx");

            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-GN1S5UA\SERVER;Initial Catalog=Banco;Integrated Security=SSPI;"))
            {
                SqlCommand command = new SqlCommand("select su.sucursal,su.id,su.Telefono,su.Direccion,(select ciudad.Ciudad from ciudad where Id=su.IdCiudad) as ciudad  from sucursal AS su", sqlCon);
                sqlCon.Open();
                SqlDataReader rdr = command.ExecuteReader();
                if (rdr.HasRows)
                {
                    GridView1.DataSource = rdr;
                    GridView1.DataBind();
                    sqlCon.Close();
                }
                else
                {
                    lblErrorMessage.Visible = true;
                }
                rdr.Close();
                sqlCon.Close();
            }

        }

        protected void btnLogo_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void ingresar_Click(object sender, EventArgs e)
        {


            using (SqlConnection cn = new SqlConnection(@"data source=PC40;initial catalog=Banco;user id=sa;password=iue2019;"))
            {
                // Query to be executed
                string query = "INSERT INTO[dbo].[Sucursal] ([Sucursal],[IdCiudad],[IdTipoSucursal],[Telefono],[Direccion]) VALUES(@sucursal,1,1,@telefono,@direccion)";

                // instance connection and command
                using (SqlCommand cmd = new SqlCommand(query, cn))
                {

                    // add parameters and their valuesid UserID
                    cmd.Parameters.Add("@sucursal", System.Data.SqlDbType.NVarChar, 100).Value = sucursal.Value;
                    cmd.Parameters.Add("@direccion", System.Data.SqlDbType.NVarChar, 100).Value = direcci.Value;
                    cmd.Parameters.Add("@telefono", System.Data.SqlDbType.NVarChar, 100).Value = telefono.Value;

                    // open connection, execute command and close connection
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }
            }
        }
    }
}