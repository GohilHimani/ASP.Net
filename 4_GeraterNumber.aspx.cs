using System;
namespace WebApplication
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void TextBtn_Click(object sender, EventArgs e)
        {
            int a ,b ,c;
            a = Convert.ToInt32(TextNum1.Text);
            b = Convert.ToInt32(TextNum2.Text);
            c = Convert.ToInt32(TextNum3.Text);

            if (a>b)
            {
                if(a>c)
                {
                    TextGeraterNum.Text = ("Number 1 is Greater");
                }
                else
                {
                    TextGeraterNum.Text = ("Number 3 is Greater");
                }
            }
            else
            {
                if(b<c)
                {
                    TextGeraterNum.Text = ("Number 2 is Greater");
                }
                else
                {
                    TextGeraterNum.Text = ("Number 3 is Greater");
                }
            }
        }
    }
}