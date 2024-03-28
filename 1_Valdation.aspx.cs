using System;

namespace WebApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            if (TextFname.Text.Trim() == "")
            {
                MsgFname.Text = "First name Cannot be blank!";

            }
            else if (TextFname.Text.Length < 2)
            {
                MsgFname.Text = "Length Must Be 2 to 20 Characters!";
            }
            else if (TextFname.Text.Length > 20)
            {
                MsgFname.Text = "Length Must Be 2 to 20 Chatacters!";
            }
            else
            {
                MsgFname.Text = "";
            }

            if (DDL1.SelectedIndex == 0)
            {
                MsgCountry.Text = "Country Must be Selected!";
            }
            else
            {
                MsgCountry.Text = "";
            }

            if(ChkAgree.Checked == false)
            {
                MsgAgree.Text = "Terms Must be Agreed!";
            }
            else
            {
                MsgAgree.Text = "";
            }

        }
    }
}