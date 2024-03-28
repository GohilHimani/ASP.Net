using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnClac1_Click(object sender, EventArgs e)
        {
            TextSI.Text = (Convert.ToInt32(TextAmount.Text) * Convert.ToInt32(TextRate.Text) * Convert.ToInt32(TextNumOfYear.Text) / 100).ToString();
        }
    }
}