using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBAPP
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            day_today.Text = DateTime.Today.ToString("dd-MM-yyyy");
            Response.Write("Your are logged in as :" + Session["username"]);
        }
        void insert()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\WEBAPP\ad.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into data values('" + Session["username"] + "','" + day_today.Text + "', '" + subject1.Text + "','" + feed.Text + "')", con);
            cmd.ExecuteNonQuery();

            con.Close();

        }

        protected void ssubmit_button_Click(object sender, EventArgs e)
        {
            insert();   //Insert function
            Response.Redirect("login.aspx");

        }
    }


}