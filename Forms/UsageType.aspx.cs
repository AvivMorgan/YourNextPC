using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.Forms
{
    public partial class UsageType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (option1.Checked == true)
            {
                Session["Category"] = "Coding";
            }
            if (option2.Checked == true)
            {
                Session["Category"] = "Gaming";
            }
            if (option3.Checked == true)
            {
                Session["Category"] = "surfing";
            }
            if (option4.Checked == true)
            {
                Session["Category"] = "3D editing";
            }
            if (option5.Checked == true)
            {
                Session["Category"] = "office";
            }
            if (option6.Checked == true)
            {
                Session["Category"] = "Video Editing";
            }
            Response.Redirect("Budget.aspx");
        }
    }
}