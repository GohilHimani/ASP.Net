﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kriyal
{
    public partial class _9_dropdown_transfer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFirst_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < lstDestination.Items.Count; i++)
            {
                lstSource.Items.Add(lstDestination.Items[i]);
            }
            lstDestination.Items.Clear();
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

        protected void btnNext_Click(object sender, EventArgs e)
        {
            for(int i = lstSource.Items.Count - 1; i >= 0; i--)
            {
                if(lstSource.Items[i].Selected == true)
                {
                    lstDestination.Items.Add(lstSource.Items[i]);
                    lstSource.Items.RemoveAt(i);
                }
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
    }
}