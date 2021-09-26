using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Methods
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnArea_Click(object sender, EventArgs e)
        {
            double length;
            double width;
            double area;

            length = double.Parse(TxtLength.Text);
            width = double.Parse(TxtWidth.Text);

            //area = length * width;
            area = Area(length, width);

            LblResult.Text = area.ToString();


        }

        private double Area(double length, double width)
        {
            return length * width;
        }
    }
}