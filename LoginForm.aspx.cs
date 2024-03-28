using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;



namespace WebApplication1.Asp.net
{
    public partial class LoginForm : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-3OS11LV;Initial Catalog=test;Persist Security Info=True;User ID=sa;Password=P@ssw0rd");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            cmd.CommandText = "select count(*) from User_Table where UName = '" + TextUName.Text + "' and UPasswords = '" + TextPwd.Text + "'";
            cmd.Connection = cn;


            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }

            int i = Convert.ToInt32(cmd.ExecuteScalar());

            if (cn.State == ConnectionState.Open)
            {
                cn.Close();
            }

            if (i == 1)
            {
                Session["User"] = TextUName.Text;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successful In LogIn');", true);
                Response.Redirect("Done_LogIn.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Invalid UserName And Password');", true);
            }

        }
    }
}