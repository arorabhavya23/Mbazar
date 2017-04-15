using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;

public partial class ChangePassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=user-PC;Initial Catalog=EShoppingDB;Integrated Security=True");
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["muser"] == null)
            Response.Redirect("login.aspx");
    }
    protected void BtnChangePassword_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string query = "update LogIn set Password='" + TBNewPassword.Text + "'where UserName='" + Session["muser"].ToString() + "'";
            cmd = new SqlCommand(query, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                LabelChangePass.Visible = true;
            }
        }
        catch (Exception ex)
        {
            LabelChangePass.ForeColor = System.Drawing.Color.Red;
            LabelChangePass.Visible = true;
            LabelChangePass.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
    }
}