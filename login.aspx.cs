using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBAPP
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = login.Text;


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string t = "Student";
            
            if (DropDownList1.Text == t)
            {
                Response.Redirect("studentpage.aspx");

            }
            else
            {
                Response.Redirect("studentinfo.aspx");

            }
        }
    }
}