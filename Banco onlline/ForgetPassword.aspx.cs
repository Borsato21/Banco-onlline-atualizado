using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banco_onlline
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getUserSecuirtyQuestion();
            }
        }

        void getUserSecuirtyQuestion()
        {
            if (Session["forgotpassword"] != null)
            {
                con = new SqlConnection(Common.GetConnectionString());
                cmd = new SqlCommand(@"Select a.UserName,s.SecuirtyQuestionName,a.Answer from Account a 
                                        inner join SecuirtyQuestion s on a.SecuirtyQuestion = s.SecuirtyQuestionid 
                                        wher Username = @Username", con);
                cmd.Parameters.AddWithValue("@Username", Session["forgotpassword"]);
                try
                {
                    con.Open();
                    reader = cmd.ExecuteReader();
                    bool isTrue = false;
                    while (reader.Read())
                    {
                        isTrue = true;
                        lblUsername.Text = reader["UserName"].ToString();
                        lblSecuirtyQuestion.Text = reader["SecuirtyQuestionName"].ToString();
                        hndAnswer.Value = reader["Answer"].ToString();
                    }
                    if (isTrue)
                    {
                        error.InnerText = "Input inválido.";
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error - " + ex.Message + " ');</script>");
                }
                finally
                {
                    reader.Close();
                    con.Close();
                }
            }
        }

        protected void btnForgetPassword_Click(object sender, EventArgs e)
        {
            if(txtAnswer.Text.Trim() == hndAnswer.Value)
            {
                Response.Redirect("ChangePassword.aspx");
            }
            else
            {
                error.InnerText = "Invalid input.";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}