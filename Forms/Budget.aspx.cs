using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.Forms
{
    public partial class Budget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (bOption1.Checked == true)
            {
                Session["Budget"] = 200;
            }
            if (bOption2.Checked == true)
            {
                Session["Budget"] = 300;
            }
            if (bOption3.Checked == true)
            {
                Session["Budget"] = 400;
            }
            if (bOption4.Checked == true)
            {
                Session["Budget"] = 500;
            }
            if (bOption5.Checked == true)
            {
                Session["Budget"] = 600;
            }
            if (bOption6.Checked == true)
            {
                Session["Budget"] = 700;
            }
            if (bOption8.Checked == true)
            {
                Session["Premium"] = "true";
            }
            Response.Redirect("StartEnjoy.aspx");
        }
    }
}