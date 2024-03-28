using System;
using System.Data.SqlClient;

namespace WebApplication_A
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-3OS11LV;Initial" +
          " Catalog=projectdb;User ID=sa;Password=P@ssw0rd");

        protected void btnCount_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select count(*) from Departments";
            cmd.Connection = cn;

            if (cn.State == System.Data.ConnectionState.Closed)
            {
                cn.Open();
            }

            int totalRecords = Convert.ToInt32(cmd.ExecuteScalar());

            if (cn.State == System.Data.ConnectionState.Open)
            {
                cn.Close();
            }

            lblMsg.Text = "Total departments: " + totalRecords.ToString();
        }
    }
}
