using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5.Forms
{
    public partial class StartEnjoy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Computer c = null,premiumPC=null;
            string category = Session["Category"].ToString();
            string price = Session["Budget"].ToString();
            bool IsPrem = Session["Premium"].Equals("true");
            if (IsPrem)
            {
                premiumPC = Classes.DBFuncions.GetPremiumComputer();
            }
            if (premiumPC != null)
            {
                tbCategory.Text = premiumPC.GetCategory();
                tbCpu.Text = premiumPC.GetCpu();
                tbPrice.Text = premiumPC.GetPrice();
                tbRam.Text = premiumPC.GetRam();
            }
            else
            {
                c = Classes.DBFuncions.GetComputer(category, price);
                if (c != null)
                {
                    tbCategory.Text = c.GetCategory();
                    tbCpu.Text = c.GetCpu();
                    tbPrice.Text = c.GetPrice();
                    tbRam.Text = c.GetRam();
                }
            }
        }
    }
}