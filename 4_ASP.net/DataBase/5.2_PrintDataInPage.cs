using System;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class PrintDataInPage : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-3OS11LV;Initial Catalog=test;Persist Security Info=True;User ID=sa;Password=P@ssw0rd");
    
        protected void BTN1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select * from Departments";
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

            LB1.Text = "Total Departments : " + totalRecords.ToString();
        }
    }
}