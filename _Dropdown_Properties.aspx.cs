using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class _Dropdown_Properties : System.Web.UI.Page
    {
        protected void BtnTotal_Click(object sender, EventArgs e)
        {
            SapnMsg.InnerText = "Total Records Are: " + (DDL1.Items.Count - 1).ToString();
        }

       
        protected void BtnGetSelected_Click(object sender, EventArgs e)
        {
            SapnMsg.InnerText = "Selected Items Is: " + DDL1.SelectedItem.Text;
        }

        protected void BtnGetSelectedIndex_Click(object sender, EventArgs e)
        {
            SapnMsg.InnerText = "Selected Items Is " + DDL1.SelectedIndex.ToString();
        }

        protected void BtnRemoveSelected_Click(object sender, EventArgs e)
        {
            DDL1.Items.Remove(DDL1.SelectedItem);
        }

        protected void BtnRemoveAll_Click(object sender, EventArgs e)
        {
            DDL1.Items.Clear();
        }

        protected void BtnRemoveByIndex_Click(object sender, EventArgs e)
        {
            DDL1.Items.RemoveAt((Convert.ToInt32(TextIndex.Text)));
        }
    }
}