using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                lstSource.Items.Add(new ListItem("C Language", "C"));
                lstSource.Items.Add(new ListItem("C++", "Cpp"));
                lstSource.Items.Add(new ListItem("Css", "Css"));
                lstSource.Items.Add(new ListItem("Java", "Java"));
                lstSource.Items.Add(new ListItem("Pytone", "py"));
                lstSource.Items.Add(new ListItem("C#", "Cs"));
                lstSource.Items.Add(new ListItem("Sql", "Sql"));
            }
        }

        protected void btnLast_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < lstSource.Items.Count; i++)
            {
                lstDestination.Items.Add(lstSource.Items[i]);
            }
            lstSource.Items.Clear();
        }

        protected void btnFirst_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < lstDestination.Items.Count; i++)
            {
                lstSource.Items.Add(lstDestination.Items[i]);
            }

            lstDestination.Items.Clear();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            for (int i = lstSource.Items.Count - 1; i >= 0; i--)
            {
                if (lstSource.Items[i].Selected == true)
                {
                    lstDestination.Items.Add(lstSource.Items[i]);
                    lstSource.Items.RemoveAt(i);
                }

            }
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            for (int i = lstDestination.Items.Count - 1; i >= 0; i--)
            {
                if (lstDestination.Items[i].Selected == true)
                {
                    lstSource.Items.Add(lstDestination.Items[i]);
                    lstDestination.Items.RemoveAt(i);
                }
            }
        }
    }
}