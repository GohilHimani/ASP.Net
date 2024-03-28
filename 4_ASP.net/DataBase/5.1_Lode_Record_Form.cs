using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Windows;

namespace WebApplication1
{
    public partial class Form : System.Web.UI.Page
    {
     
        OleDbConnection cn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:/DataBase/Database.accdb");
        OleDbCommand cmd = new OleDbCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "Select EId ,EName from Employees";
            cmd.Connection = cn;

            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
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

                string Text = "";
                string Vlaue = "";

                DDL1.Items.Clear();
                DDL1.Items.Add(new ListItem("Select Employees", ""));

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Text = dt.Rows[i]["EId"].ToString() + " - " + dt.Rows[i]["EName"].ToString();
                    Vlaue = dt.Rows[i]["EId"].ToString();
                    DDL1.Items.Add(new ListItem(Text, Vlaue));
                }
            }
        }
        protected void DDL1_SelectedIndexChanged(object sender, EventArgs e)
        {

            cmd.CommandText = "Select EId ,EName ,ESalary ,EHiredate ,EDeptId From Employees Where EId = " + DDL1.SelectedValue + "";
            cmd.Connection = cn;
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
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

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    TextId.Text = dt.Rows[i]["EId"].ToString();
                    TextName.Text = dt.Rows[i]["EName"].ToString();
                    TextSalary.Text = dt.Rows[i]["ESalary"].ToString();
                    TextHireDate.Text = dt.Rows[i]["EHireDate"].ToString();
                    TextDeptId.Text = dt.Rows[i]["EdeptId"].ToString();
                }
            }
            cmd.Connection = cn;

        }

        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "Insert Into Employees values(" + Convert.ToInt32(TextId.Text) + ",'" + TextName.Text + "'," + Convert.ToInt32(TextSalary.Text) + ",#" + TextHireDate.Text + "#," + Convert.ToInt32(TextDeptId.Text) + ")";
            cmd.Connection = cn;
            if(cn.State==ConnectionState.Closed)
            {
                cn.Open();
            }
            cmd.ExecuteNonQuery();
            if(cn.State==ConnectionState.Open)
            {
                cn.Close();
            }

            Response.Write("Inserted");
        }
        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            cmd.CommandText= "UPDATE Employees Set EName = '" +TextName.Text+"', ESalary = "+Convert.ToInt32(TextSalary.Text)+",EHireDate = #"+TextHireDate.Text +"#,DeptId = "+Convert.ToInt32(TextDeptId.Text)+" Where EId ="+Convert.ToInt32(TextId.Text)+"";

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

            Response.Write("UpDate");
        }
        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "DELETE * From Employees Where EId =" + Convert.ToInt32(TextId.Text) + "";

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

            Response.Write("DELETE");
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            TextId.Text = "";
            TextName.Text = "";
            TextSalary.Text = "";
            TextHireDate.Text = "";
            TextDeptId.Text = "";
        }

    }
}
