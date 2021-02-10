using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBAPP
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void select()
        {
            string text = this.sub.Value;
            string query = null;
            string user = enroll.Text;
            ///if (text != "selected")
            //{
                query = "select * from data where Subjects = '" + text + "' ";
            //}
            //else
            //{
              //  query = "select * from data where Username = '" + user + "'  ";
            //}

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\WEBAPP\ad.mdf;Integrated Security=True;Connect Timeout=30");            //con.Open();
            con.Open();
            
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet dsData = new DataSet();
            sda.Fill(dsData);
            GridView1.DataSource = dsData;
            ///GridView1.DataSource = cmd.ExecuteReader();
            
            GridView1.DataBind();
            ////con.Close();
        }

        protected void search(object sender, EventArgs e)
        {
            
            select();
            
        }
    }
}