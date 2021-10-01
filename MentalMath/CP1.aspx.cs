using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MentalMath
{
    public partial class CP1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var r = new Random();
            int a = r.Next(0, 9);
            int b = r.Next(0, 9);
            QuestionTextBox.Text = a.ToString() + " + " + b.ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}