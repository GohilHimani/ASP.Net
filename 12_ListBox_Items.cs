using System;

namespace WebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int i;
        protected void Btn1_Click(object sender, EventArgs e)
        {
            //TextBox Text Same List Items Select

            for (i = LB1.Items.Count - 1; i >= 0; i--)
            {
                if (LB1.Items[i].Text == TB1.Text)
                {
                    LB1.Items[i].Selected = true;
                }
            }
            
        }

        protected void Btn2_Click(object sender, EventArgs e)
        {
            //Count Selected Items

            int c = 0;
            for (i = LB1.Items.Count - 1; i >= 0; i--)
            {
                if (LB1.Items[i].Text == TB1.Text)
                {
                    c++;
                }
            }
            SapnMsg.InnerText = "Total Records Are : " + c;

        }

        protected void Btn3_Click(object sender, EventArgs e)
        {
            //Delete UnSelecred Items

            for (i = LB1.Items.Count - 1; i >= 0; i--)
            {
                if (LB1.Items[i].Selected == false)
                {
                    LB1.Items.RemoveAt(i);
                }
            }
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            LB1.Items.Add(TB1.Text);
        }
    }
}