using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Journals
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            TxtStart.Text = "";
            TxtEnd.Text = "";
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //  if the TxtStart text box has nothing in it than it has not
            //  been clicked, when clicked put start in text box. otherwise it has
            //  something and we're on the second date
            //
            if (TxtStart.Text == "")
            {
                TxtStart.Text = Calendar1.SelectedDate.ToString();
            }
            else
            {
                TxtEnd.Text = Calendar1.SelectedDate.ToString();
            }



        }
    }
}