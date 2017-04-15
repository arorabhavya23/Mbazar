using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Shop : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=user-PC;Initial Catalog=EShoppingDB;Integrated Security=True");
    SqlCommand cmd;
    SqlDataAdapter ad;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["muser"] != null)
        {
            HyperLink3.Visible = false;
            LinkBtnLogOut.Visible = true;
            LblUserID.Visible = true;
            LblUserID.Text = "Welcome " + Session["muser"].ToString();
        }
        if (!IsPostBack)
        {
            string query = "select * from Product";
            ad = new SqlDataAdapter(query, con);
            ad.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();

        }

    }
    protected void LinkBtnLogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");
    }


    protected void ButtonAddToCatr_Click(object sender, EventArgs e)
    {

    }
}
    