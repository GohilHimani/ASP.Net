using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication_A
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void btnCheckDbCon_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=DESKTOP-3OS11LV;Initial Catalog=projectdb;User ID=sa;Password=P@ssw0rd";

            if (cn.State == System.Data.ConnectionState.Closed)
            {
                cn.Open();
            }

            // Operations
            lblMessage.Text = "DB connection is open";

            if (cn.State == System.Data.ConnectionState.Open)
            {
                cn.Close();
            }
        }
    }
}
