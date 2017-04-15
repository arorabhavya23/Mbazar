using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class AddProducts : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=user-PC;Initial Catalog=EShoppingDB;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         try
        {
            con.Open();
            string query = "insert into CatgTable values('" + TextBox1.Text+ "','" + TextBox2.Text + "')";
            cmd = new SqlCommand(query, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
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
