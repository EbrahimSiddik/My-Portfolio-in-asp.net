using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_portfolio
{
    public partial class index : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            try
            {
               
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand com = new SqlCommand("INSERT INTO message ([name],[email],[phone],[subject],[message]) VALUES(@name,@email,@phone,@subject,@message)", con);
                com.Parameters.AddWithValue("@name", name.Text.Trim());
                com.Parameters.AddWithValue("@email", email.Text.Trim());
                com.Parameters.AddWithValue("@phone", phone.Text.Trim());
                com.Parameters.AddWithValue("@subject", subject.Text.Trim());
                com.Parameters.AddWithValue("@message", message.Text.Trim());
                com.ExecuteNonQuery();
                con.Close();
                name.Text = "";
                email.Text = "";
                message.Text = "";
                phone.Text = "";
                subject.Text = "";

            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;


            }
        }
    }
}