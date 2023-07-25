using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Security.Cryptography;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banco_onlline
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    
        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cadastrar.aspx");
        }

        protected void lbEsqueceuSenha_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == string.Empty)
            {
                error.InnerText = "Input inválido";
                txtUsername.Focus();
            }
            else
            {
                Session["forgotpassword"] = txtUsername.Text.Trim();
                Response.Redirect("ForgotPassword.aspx");
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(Common.GetConnectionString());
            cmd = new SqlCommand(@"Select * from Account where Username = @Username and Password = @Password", con);
            cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                bool isTrue = false;
                while(reader.Read())
                {
                    isTrue = true;
                    Session["userId"] = reader["AccountId"].ToString();
                }
                if (isTrue)
                {
                    Response.Redirect("PerformTransaction.aspx", false);
                }
                else
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
}