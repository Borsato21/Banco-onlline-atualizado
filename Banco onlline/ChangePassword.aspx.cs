using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banco_onlline
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            if (Session["forgotpassword"] != null)
            {
                con = new SqlConnection(Common.GetConnectionString());
                cmd = new SqlCommand(@"Update Account set Password= @Password wher Username = @Username", con);
                cmd.Parameters.AddWithValue("@Password", txtNewPasswoard.Text.Trim());
                cmd.Parameters.AddWithValue("@Username", Session["forgotpassword"]);
                try
                {
                    con.Open();
                    int r = cmd.ExecuteNonQuery();
                    if(r> 0) 
                    {
                        Response.Redirect("login.aspx", false);
                    }
                    else
                    {
                        error.InnerText = "Invalid input.";
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error - " + ex.Message + " ');</script>");
                }
                finally
                {
                    con.Close();
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgotpassword.aspx");
        }
    }
}