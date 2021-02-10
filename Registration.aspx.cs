using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBAPP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            day_today.Text = DateTime.Today.ToString("dd-MM-yyyy");
        }
        protected void reg_button(object sender, EventArgs e)
        {

            insert();   //Insert function
            Response.Redirect("login.aspx");

        }
        public void insert()
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\WEBAPP\ad.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            Response.Write("Succesfully connected");

            SqlCommand cmd = new SqlCommand("insert into login values('" + reg_id.Text + "','" + reg_pass.Text + "')", con);
            cmd.ExecuteNonQuery();

            con.Close();
        }
    }
}
