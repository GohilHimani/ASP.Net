﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_A
{
    public partial class WebForm2 : System.Web.UI.Page
    {
       
        protected void btnTotal_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Total Records: " + lstCountries.Items.Count.ToString();
        }

        protected void btnSelectedText_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Selected Record: " + lstCountries.SelectedItem.Text;
        }

        protected void btnSelectedIndex_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Selected Index: " + (lstCountries.SelectedIndex + 1).ToString();
        }

        protected void btnSelectedValue_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Selected Value: " + lstCountries.SelectedItem.Value;
        }

        protected void btnIndexTextValue_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Selected Record: " + (lstCountries.SelectedIndex + 1).ToString() +
                              " - " + lstCountries.SelectedItem.Text +
                              " (" + lstCountries.SelectedItem.Value + ")";
        }

        protected void btnAllSelected_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Selected Record: <br>";

            for (int i = 0; i < lstCountries.Items.Count; i++)
            {
                if (lstCountries.Items[i].Selected == true)
                {
                    lblMessage.Text += lstCountries.Items[i].Text +
                              " (" + lstCountries.Items[i].Value + ")<br>";
                }
            }
        }

        protected void btnSelect2ndItem_Click(object sender, EventArgs e)
        {
            lstCountries.SelectedIndex = 1;
        }
    }

}
