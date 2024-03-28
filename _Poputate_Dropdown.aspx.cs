using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace WebApplication_A
{
    public partial class _Poputate_Dropdown : System.Web.UI.Page
    {
        OleDbConnection cn = new OleDbConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:/Database.accdb";
        }

        protected void BtnLoadRecord_Click(object sender, EventArgs e)
        {

            OleDbConnection cn = new OleDbConnection();

            if (cn.State == System.Data.ConnectionState.Closed)
            {
                cn.Open();
            }

            OleDbCommand cmd = new OleDbCommand();
            cmd.CommandText = "Select DEPT_ID,DEPT_NAME from Department";
            cmd.Connection = cn;

            OleDbDataReader rdr = cmd.ExecuteReader();

            if (rdr.Read())
            {
                while (rdr.Read())
                {
                    DDL1.Items.Add(new ListItem(rdr["DEPT_NAME"].ToString(), rdr["DEPT_ID,DEPT_NAME"].ToString()));
                }
            }
            rdr.Close();

            if (cn.State == System.Data.ConnectionState.Open)
            {
                cn.Close();
            }

        }
    }

}