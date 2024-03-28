using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Dropdown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DDL3.Items.Add("Select Country");
            DDL3.Items.Add("India");
            DDL3.Items.Add("Usa");
            DDL3.Items.Add("Uk");
            DDL3.Items.Add("China");
            DDL3.Items.Add("Auatralia");

            DDL4.Items.Add(new ListItem("Select Country"," ");
            DDL4.Items.Add(new ListItem("Australia"));
            DDL4.Items.Add(new ListItem("India","1"));
            DDL4.Items.Add(new ListItem("Canada","2"));
            DDL4.Items.Add(new ListItem("Italy","3"));
            DDL4.Items.Add(new ListItem("Spain","4"));
            DDL4.Items.Add(new ListItem("South Africa","5"));

        }
    }
}