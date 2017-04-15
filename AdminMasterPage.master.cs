using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aUser"] == null)
        {
            Response.Redirect("HomePaget.aspx");
        }
        else
            LblAdminName.Text = Session["aUser"].ToString();
    }
    
    protected void LinkButtonLogOut_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");
    }
}
