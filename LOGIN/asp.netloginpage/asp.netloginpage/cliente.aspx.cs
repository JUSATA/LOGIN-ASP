using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.netloginpage
{
    public partial class cliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("login.aspx");
            lblUserDetails.Text = "Usuario : " + Session["username"];
            lblUserDetails2.Text = ""+ Session["username"];

            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-GN1S5UA\SERVER;Initial Catalog=Banco;Integrated Security=SSPI;"))
            {
                SqlCommand command = new SqlCommand("select cuenta.numero, Cuenta.FechaApertura, Sucursal.Sucursal, TipoCuenta.TipoCuenta from[dbo].[Persona] INNER JOIN[dbo].[Titular] ON[Persona].[Id] = [dbo].[Titular].IdPersona INNER JOIN[dbo].Cuenta ON Cuenta.Id = [dbo].[Titular].IdCuenta INNER JOIN[dbo].Sucursal ON Sucursal.Id = [dbo].Cuenta.IdSucursal INNER JOIN[dbo].TipoCuenta ON TipoCuenta.Id = [dbo].Cuenta.IdTipoCuenta   WHERE[Persona].Documento = @username ", sqlCon);
          
                sqlCon.Open();
                command.Parameters.Add(new SqlParameter("@username", Session["username"].ToString()));
                SqlDataReader rdr = command.ExecuteReader();
                if (rdr.HasRows)
                {
                    GridView2.DataSource = rdr;
                    GridView2.DataBind();
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

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-GN1S5UA\SERVER;Initial Catalog=Banco;Integrated Security=SSPI;"))
            {
                SqlCommand command = new SqlCommand("SELECT * FROM[Cuenta] WHERE[FechaApertura] BETWEEN   CONVERT(DATE, @inicio) AND   CONVERT(DATE, @fin)", sqlCon);
                sqlCon.Open();
                command.Parameters.AddWithValue("@inicio",inicio.Value);
                command.Parameters.AddWithValue("@fin", fin.Value);
                SqlDataReader rdr = command.ExecuteReader();
                if (rdr.HasRows)
                {
                    GridView3.DataSource = rdr;
                    GridView3.DataBind();
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


        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }


    }
}