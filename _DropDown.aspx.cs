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
        protected void Page_Load(object sender, EventArgs e)
        {
            DDL3.Items.Add("Select Singer");
            DDL3.Items.Add("Justin Bieber");
            DDL3.Items.Add("Doja Cat");
            DDL3.Items.Add("Charlie Puth");
            DDL3.Items.Add("Ava Max");
            DDL3.Items.Add("Taylor Swift");


            DDL4.Items.Add(new ListItem("Select Singer",""));
            DDL4.Items.Add(new ListItem("Justin Bieber","1"));
            DDL4.Items.Add(new ListItem("Doja Cat","2"));
            DDL4.Items.Add(new ListItem("Charlie Puth","3"));
            DDL4.Items.Add(new ListItem("Ava Max","4"));
            DDL4.Items.Add(new ListItem("Taylor Swift","5"));
            DDL4.Items.Add(new ListItem("Tehyung"));
        
        }
    }
}