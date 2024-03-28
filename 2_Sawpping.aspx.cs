using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Sawpping : System.Web.UI.Page
    {
        protected void BtnSawp_Click(object sender, EventArgs e)
        {
            string Tamp;

            Tamp = Num1.Text;
            Num1.Text = Num2.Text;
            Num2.Text = Tamp;

            SawpNum1.Text = Num1.Text;
            SawpNum2.Text = Num2.Text;

        }

    }
}