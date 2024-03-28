using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;


namespace WebApplication1
{

    public partial class UserTable : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-3OS11LV;Initial Catalog=test;Persist Security Info=True;User ID=sa;Password=P@ssw0rd");
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmdtocheksId = new SqlCommand("Select * from User_Table where UId = " + TextUId.Text + "");   
            cmdtocheksId.Connection = cn;
            SqlDataAdapter sd =new SqlDataAdapter(cmdtocheksId);
            DataTable dt = new DataTable();

            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }
            sd.Fill(dt);
            if (cn.State == ConnectionState.Open)
            {
                cn.Close();
            }

            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Already Exist UId');", true);

            }
            else
            {

                cmd.CommandText = "INSERT INTO User_Table([UID],[UNAME],[UPasswords]) VALUES(@UID,@UNAME,@UPasswords)";
                cmd.Parameters.AddWithValue("@UID", Convert.ToInt32(TextUId.Text));
                cmd.Parameters.AddWithValue("@UNAME", TextUName.Text);
                cmd.Parameters.AddWithValue("@UPasswords", TextPaw.Text);

                cmd.Connection = cn;


                if (cn.State == ConnectionState.Closed)
                {
                    cn.Open();
                }

                cmd.ExecuteNonQuery();

                if (cn.State == ConnectionState.Open)
                {
                    cn.Close();
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfull INSERTED');", true);

            }
        }

    }
}
