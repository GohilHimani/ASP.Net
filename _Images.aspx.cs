using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Image2.ImageUrl = "~/Images/image2.jpg";
            Image2.Width = 400;
            Image2.Height = 400;

            ImageShow.ImageUrl = DDL1.SelectedValue;
        }

        protected void DDL1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ImageShow.ImageUrl = DDL1.SelectedValue; 
        }
    }
}