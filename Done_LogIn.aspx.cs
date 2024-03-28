using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Done_LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Response.Write("Welcome To My Site " + Session["User"].ToString());
            }
            else
            {
                Response.Redirect("LoginForm.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Session["User"] = null;
                Response.Redirect("LoginForm.aspx");
            }
        }
    }
}