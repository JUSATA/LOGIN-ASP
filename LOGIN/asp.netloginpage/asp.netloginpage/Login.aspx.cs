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
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //user id=sa;password=iue2019;
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-GN1S5UA\SERVER;Initial Catalog=Banco;Integrated Security=SSPI;"))
            {
                SqlCommand command = new SqlCommand("SELECT * FROM [dbo].[Persona] WHERE Documento=@Documento AND Clave=@Clave ", sqlCon);
                sqlCon.Open();
                command.Parameters.AddWithValue("@Documento", txtUserName.Text.Trim());
                command.Parameters.AddWithValue("@Clave", txtPassword.Text.Trim());
                SqlDataReader rdr = command.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        if (empleado.Value == rdr["Empleado"].ToString() && empleado.Checked)
                        {
                            Session["username"] = txtUserName.Text.Trim();

                            Response.Redirect("empleado.aspx");
                        }
                        if (cliente.Value == rdr["Empleado"].ToString() && cliente.Checked)
                        {
                            Session["username"] = txtUserName.Text.Trim();

                            Response.Redirect("cliente.aspx");
                        }
                    }

                }
                else
                {
                    lblErrorMessage.Visible = true;
                }
                rdr.Close();
                sqlCon.Close();
            }
        }
    }
}