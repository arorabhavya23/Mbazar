using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class AddItems : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=user-PC;Initial Catalog=EShoppingDB;Integrated Security=True");
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        try
        {
            Random r = new Random();
            int num = r.Next(124545);
            string fpath = "~\\Uploads\\" +num+FileUpload1.FileName;
            con.Open();
            string query = "insert into Product values(" + DropDownList2.SelectedValue + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','"+TextBox3.Text+"','"+TextBox4.Text+"','"+fpath+"')";
            cmd = new SqlCommand(query, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath(fpath));
                GridView1.DataBind();

                Label1.Text = "Data Successfully Inserted";
            }
            else
            {
                Label1.Text = "There is Some error in code";
            }

        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;

        }
        finally
        {
            con.Close();
        }
    }
}
    
