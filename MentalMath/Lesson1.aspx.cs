using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MentalMath
{
    public partial class Lesson1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void IncreamentCounter(object sender, EventArgs e)
        {
            int counter;

            if (ViewState["Count"] != null)
            {
                counter = Convert.ToInt32(ViewState["Count"]);
            }
            else
            {
                counter = 0;
            }
            if (counter != 10)
            {
                this.lblCount.Text = counter.ToString();
                image.ImageUrl = @"~\Content\Images\finger-counting-pics\" + counter + ".png";
                counter = counter + 1;
                ViewState["Count"] = counter;

            }
        }
    }
}