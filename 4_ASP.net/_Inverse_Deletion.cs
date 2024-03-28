using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testASP
{
    public partial class _8_Inverse_Deletion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            for(int i = lstItems.Items.Count-1; i >= 0; i--)
            {
                if (lstItems.Items[i].Selected == false)
                {
                    lstItems.Items.RemoveAt(i);
                }
            }
        }
    }
}