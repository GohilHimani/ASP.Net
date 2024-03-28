using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DataTable : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-3OS11LV;Initial Catalog=projectdb;User ID=sa;Password=P@ssw0rd");

        protected void Btn1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select DeptID, DeptName from Departments";
            cmd.Connection = cn;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }

            da.Fill(dt);

            if (cn.State == ConnectionState.Open)
            {
                cn.Close();
            }

            if (dt.Rows.Count > 0)
            {
                string text = "";
                string value = "";
                DDl1.Items.Clear();
                DDl1.Items.Add(new ListItem("Select Department", ""));

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    text = dt.Rows[i]["DeptID"].ToString() + " - " + dt.Rows[i]["DeptName"].ToString();
                    value = dt.Rows[i]["DeptID"].ToString();

                    DDl1.Items.Add(new ListItem(text, value));
                }
            }

        }
    }
}