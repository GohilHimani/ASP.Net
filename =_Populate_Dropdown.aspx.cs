using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication_A
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-3OS11LV;Initial Catalog=projectdb;User ID=sa;Password=P@ssw0rd");

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select DeptID, DeptName from Departments";
            cmd.Connection = cn;

            if (cn.State == System.Data.ConnectionState.Closed)
            {
                cn.Open();
            }

            SqlDataReader rdr = cmd.ExecuteReader();
            string text = "", value = "";

            if (rdr.HasRows)
            {
                ddlDepartments.Items.Clear();
                ddlDepartments.Items.Add(new ListItem("Select Department", ""));

                while (rdr.Read())
                {
                    text = rdr["DeptId"].ToString() + " - " + rdr["DeptName"].ToString();
                    value = rdr["DeptId"].ToString();

                    ddlDepartments.Items.Add(new ListItem(text, value));
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
