using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.netloginpage
{
    public partial class consultar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-GN1S5UA\SERVER;Initial Catalog=GestionCitas;Integrated Security=SSPI;"))
            {
                DataList1.DataSourceID = "";
                DataList1.DataBind();
                sqlCon.Open();
                SqlCommand cmd = sqlCon.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from perfil where Clave=@clave";
                cmd.Parameters.AddWithValue("@clave", id.Value);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (dt.Rows.Count >= 1) {
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                    sqlCon.Close();
                } else { lblErrorMessage.Attributes.Add("style", "display:normal"); }
                    


               
                //    lblErrorMessage.Attributes.Add("style", "display:normal");
                
            }
        }
    }
}