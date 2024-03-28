using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class Form_Nev2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-3OS11LV;Initial Catalog=test;Persist Security Info=True;User ID=sa;Password=P@ssw0rd");
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindGridview();
                LodeData();
            }
        }

        void bindGridview()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select ID, Name, Salary, Hiredate, DeptNo from EMP";
            cmd.Connection = cn;
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }

            da.Fill(dt);

            if (cn.State == ConnectionState.Open)
            {
                cn.Close();
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        void LodeData()
        {
            cmd.CommandText = "Select DeptId ,DeptName from Departments";
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

                string Text = "";
                string Value = "";

                DDL1.Items.Clear();
                DDL1.Items.Add(new ListItem("Select Departments", ""));

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Text = dt.Rows[i]["DeptId"].ToString() + " - " + dt.Rows[i]["DeptName"].ToString();
                    Value = dt.Rows[i]["DeptId"].ToString();
                    DDL1.Items.Add(new ListItem(Text, Value));
                }
            }
        }

        protected void DDL1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            cmd.CommandText = "Select ID, Name, Salary, Hiredate, DeptNo from EMP WHERE ID = " + DDL1.SelectedValue + "";
            cmd.Connection = cn;

            if (cn.State == System.Data.ConnectionState.Closed)
            {
                cn.Open();
            }

            SqlDataReader rdr = cmd.ExecuteReader();

            if (rdr.HasRows)
            {
                while (rdr.Read())
                {

                    txtId.Text = rdr["Id"].ToString();
                    txtName.Text = rdr["Name"].ToString();
                    txtSalary.Text = rdr["Salary"].ToString();
                    txtHireDate.Text = rdr["HireDate"].ToString();
                    DDL1.SelectedValue = rdr["DeptNo"].ToString();
                }
            }

            rdr.Close();

            if (cn.State == System.Data.ConnectionState.Open)
            {
                cn.Close();
            }

            cmd.Connection = cn;
            

        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bindGridview();
        }

       
        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO EMP(ID,Name,Salary,Hiredate,DeptNo) VALUES(@ID,@Name,@Salary,@Hiredate,@DeptNo)";
            cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(txtId.Text));
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Salary", Convert.ToInt32(txtSalary.Text));
            cmd.Parameters.AddWithValue("@HireDate", DateTime.ParseExact(txtHireDate.Text, "dd/MM/yyyy", null));
            cmd.Parameters.AddWithValue("@DeptNo", DDL1.SelectedValue);

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

        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO EMP(ID,Name,Salary,Hiredate,DeptNo) VALUES(@ID,@Name,@Salary,@Hiredate,DeptNo)";

            cmd.CommandText = "UPDATE Employees SET Name = @Name, Salary = @Salary, Hiredate = @Hiredate WHERE ID = @ID";
            cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(txtId.Text));
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Salary", Convert.ToInt32(txtSalary.Text));
            cmd.Parameters.AddWithValue("@HireDate", DateTime.ParseExact(txtHireDate.Text, "dd/MM/yyyy", null));
            cmd.Parameters.AddWithValue("@DeptNo", DDL1.SelectedValue);


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

            Response.Write("Update Record");

        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "DELETE FROM Emp WHERE ID = @ID";
            cmd.Parameters.AddWithValue("@ID", txtId.Text);
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

            Response.Write("Delete Record");
        }

        
    }
}
