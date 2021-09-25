using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmpInfo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            LblResult.Text = DropDownList1.Text;
        }

        protected void BtnGo_Click(object sender, EventArgs e)
        {

            LblFullResult.Text = TxtName.Text + " " + LblResult.Text;


            //  else if as only one or the other could happen
            //
            if (RdoMarketing.Checked == true)
            {
                LblFullResult.Text += " Marketing";
            }
            else if (RdoAccounting.Checked == true)
            {
                LblFullResult.Text += " Accounting";
            }
            else if (RdoLegal.Checked == true)
            {
                LblFullResult.Text += " Legal";
            }


            //  seperate if statements to themselves, all could happen
            //
            if (ChkBA.Checked == true)
            {
                LblFullResult.Text += " BA";
            }

            if (ChkMA.Checked == true)
            {
                LblFullResult.Text += " MA";
            }

            if (ChkPHD.Checked == true)
            {
                LblFullResult.Text += " PHD";
            }


        }

    }
}