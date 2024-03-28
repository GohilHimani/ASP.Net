using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void BtnArea_Click(object sender, EventArgs e)
        {
            TextAreaOfCircle.Text = (Convert.ToDecimal(TextPi.Text) * Convert.ToDecimal(TextRadius.Text) * Convert.ToDecimal(TextRadius.Text)).ToString();
        }
    }
}