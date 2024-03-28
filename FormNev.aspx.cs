using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class WebForm : System.Web.UI.Page
    {
        static SqlConnection cn = new SqlConnection("Data Source=DESKTOP-3OS11LV;Initial Catalog=test;Persist Security Info=True;User ID=sa;Password=P@ssw0rd");
        static DataTable dt = new DataTable();


        void Data()
        {
            txtId.Text = dt.Rows[Convert.ToInt32(Session["index"])]["Id"].ToString();
            txtName.Text = dt.Rows[Convert.ToInt32(Session["index"])]["Name"].ToString();
            txtSalary.Text = dt.Rows[Convert.ToInt32(Session["index"])]["Salary"].ToString();
            txtHireDate.Text = dt.Rows[Convert.ToInt32(Session["index"])]["HireDate"].ToString();
            txtDeptNo.Text = dt.Rows[Convert.ToInt32(Session["index"])]["DeptNo"].ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["index"] = 0;

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

                if (dt.Rows.Count > 0)
                {
                    Data();
                }

                cmd.Connection = cn;
            }
        }

        protected void BtnFirst_Click(object sender, EventArgs e)
        {

            if (dt.Rows.Count > 0)
            {
                Session["index"] = 0;
                Data();
            }

        }

        protected void BtnNext_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["index"]) < dt.Rows.Count - 1)
            {
                Session["index"] = Convert.ToInt32(Session["index"]) + 1;
                Data();
            }
        }

        protected void BtnPrevious_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["index"]) == dt.Rows.Count - 1 || Convert.ToInt32(Session["index"]) != 0)
            {
                Session["index"] = Convert.ToInt32(Session["index"]) - 1;
                Data();
            }
        }

        protected void BtnLast_Click(object sender, EventArgs e)
        {
            
            Session["index"] = dt.Rows.Count - 1;
            Data();
        }
    }
}
