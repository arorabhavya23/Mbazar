using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePaget : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["muser"] != null)
        {
            HyperLink3.Visible = false;
            LinkBtnLogOut.Visible = true;
            LblUserID.Visible = true;
            LblUserID.Text= "Welcome " + Session["muser"].ToString();
        }
    }
    protected void LinkBtnLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");
    }
}