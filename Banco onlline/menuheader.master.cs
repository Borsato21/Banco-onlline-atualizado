using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banco_onlline
{
    public partial class NestedMasterPage1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userId"] != null)
                {
                    Utils utils = new Utils();
                    lblBalance.Text = utils.accountBalance(Covert.ToInt32(Session["userId"])).ToString;
                }
            }
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}