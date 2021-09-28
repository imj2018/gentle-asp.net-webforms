using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nav
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Page2.aspx");
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Page2.aspx");
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            //string QueryString = "";
            //QueryString = "?ID=" + TxtLogin.Text;
            //Response.Redirect("Page2.aspx" + QueryString);

            Session["pw"] = TxtPass.Text;
            Response.Redirect("Page2.aspx");
        }
    }
}