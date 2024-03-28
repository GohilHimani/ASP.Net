using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        OleDbConnection cn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=E:/DataBase/Database.accdb");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                OleDbCommand cmd = new OleDbCommand("select * from Countries", cn);
                OleDbDataAdapter da = new OleDbDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DDL1.DataSource = dt;
                DDL1.DataBind();
            }

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DDL2.Items.Clear();
            DDL2.Items.Add("Select State");
            OleDbCommand cmd = new OleDbCommand("select * from States where CId =" + DDL1.SelectedItem.Value, cn);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DDL2.DataSource = dt;
            DDL2.DataBind();
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DDL3.Items.Clear();
            DDL3.Items.Add("Select State");
            OleDbCommand cmd = new OleDbCommand("select * from Citys where SId =" + DDL2.SelectedItem.Value, cn);
            OleDbDataAdapter sda = new OleDbDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DDL3.DataSource = dt;
            DDL3.DataBind();

        }
    }
}