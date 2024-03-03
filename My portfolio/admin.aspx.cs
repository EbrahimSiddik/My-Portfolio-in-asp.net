using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace My_portfolio
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = "Server=DESKTOP-T6IRO3U\\ZAIN;Database=master;Trusted_Connection=True";

            // Create the SqlConnection and SqlCommand objects
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                // Write the SQL query with parameters
                string query = "SELECT * FROM admin WHERE name = @name AND email = @email AND password = @password ";
                SqlCommand cmd = new SqlCommand(query, con);

                // Set the parameters
                cmd.Parameters.AddWithValue("@name", TxtUsername.Text);
                cmd.Parameters.AddWithValue("@password", TxtPassword.Text);
                cmd.Parameters.AddWithValue("@email", TxtEmail.Text);

                // Create a SqlDataAdapter to fill the DataSet
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                try
                {
                    // Open the connection and execute the query
                    con.Open();
                    da.Fill(ds, "admin");

                    // Check if any rows are returned
                    if (ds.Tables["admin"].Rows.Count == 0)
                    {
                        Response.Write("Invalid user");
                        TxtUsername.Text = "";
                        TxtPassword.Text = "";
                        TxtEmail.Text = "";
                    }
                    else
                    {
                        // Redirect to another page upon successful authentication
                        Response.Redirect("update.aspx");
                        TxtUsername.Text = "";
                        TxtPassword.Text = "";
                        TxtEmail.Text = "";
                    }
                }
                catch (Exception ex)
                {
                    // Handle any exceptions
                    Response.Write("Error: " + ex.Message);
                }
            }
        }

        protected void showMessage_Click(object sender, EventArgs e)
        {
            Response.Redirect("update.aspx");
        }
    }
}