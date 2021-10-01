using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using MentalMath.Models;
using Newtonsoft.Json;
namespace MentalMath
{
    public partial class fingerDetection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<quiz> quizlist = new List<quiz>() 
            { 

             new quiz {id = 1, question = "2+2", ans = 4}, 
             new quiz {id = 2, question = "3+5", ans  = 8},
             new quiz {id = 3,question = "2+7", ans  = 9}
            };

            JavaScriptSerializer ser = new JavaScriptSerializer();
            hf.Value = ser.Serialize(quizlist);
        }

        protected void result_ValueChanged(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            List<quizscore> qs = JsonConvert.DeserializeObject<List<quizscore>>(result.Value);
            int score_count = 0;
            foreach (var cor in qs)
            {
                if (cor.result == "True")
                {

                    score_count++;
                }
            }
            Response.Redirect("Score.aspx/?s="+score_count+"&l="+qs.Count());

        }
        }
    }
