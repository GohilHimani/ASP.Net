using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_A
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (txtFName.Text.Trim() == "")
            {
                msgFName.Text = "First name cannot be blank!";
            }
            else if (txtFName.Text.Length < 2)
            {
                msgFName.Text = "Length must be 2 to 20 characters!";
            }
            else if (txtFName.Text.Length > 20)
            {
                msgFName.Text = "Length must be 2 to 20 characters!";
            }
            else
            {
                msgFName.Text = "";
            }

            if (ddlCountries.SelectedIndex == 0)
            {
                msgCountry.Text = "Country must be selected";
            }
            else
            {
                msgCountry.Text = "";
            }
        }
    
    }
}
        
