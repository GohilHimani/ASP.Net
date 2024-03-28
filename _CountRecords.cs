using System;
using System.Data.OleDb;

namespace WebApplication_A
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        OleDbConnection cn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:/Database.accdb");

        protected void BtnCount_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = "Select Count(*) from Departments";
            cmd.Connection = cn;

            if(cn.State == System.Data.ConnectionState.Closed)
            {
                cn.Open();
            }
            int TotalRecords = Convert .ToInt32(cmd.ExecuteScalar());   
        
            if(cn.State == System.Data.ConnectionState.Open)
            {
                cn.Close();
            }
            LB1.Text = "Total departments : " + ToString();
        }

    }
}