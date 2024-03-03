using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace My_portfolio
{
    public partial class update : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM message", con);
                DataTable dtbl = new DataTable();
                sda.Fill(dtbl);
                MessageGridView.DataSource = dtbl;
                MessageGridView.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void MessageGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "del")
            {
                // Response.Write("<script>alert('delete id: "+e.CommandArgument+"')</script>");
                try
                {

                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();


                    SqlCommand cmd = new SqlCommand("DELETE FROM message WHERE name=@name", con);


                    cmd.Parameters.AddWithValue("@name", e.CommandArgument);

                    cmd.ExecuteNonQuery();


                    con.Close();
                    Response.Redirect("~/update.aspx");

                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('Delete hoilo na: " + ex.Message + "');</script>");
                }
            }
        }
    }
}