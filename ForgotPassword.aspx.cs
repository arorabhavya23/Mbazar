using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
public partial class ForgotPassword : System.Web.UI.Page
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
            con.Open();
            string query = "select LogIn.Password,Register.EmailID from LogIn.UserName=Register on LogIn.UserName where UserName='"+TextBoxUserName.Text+"',and EmailID='"+TextBoxEmailID+"'";
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                SendMail(TextBoxUserName.Text,dr["Password"].ToString());
                Label1.Text="Password Sucessfully UpDated";
            }
        }

               catch(Exception ex)
        {
           Label1.Visible=true;
            Label1.Text=ex.Message;
        }
        finally
        {
           con.Close();
        }

    }
    public void SendMail(string username, string password)
    {
        SmtpClient smtp = new SmtpClient();
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress("abcd@gmail.com","NO reply it default is generated ");
        smtp.Credentials = new NetworkCredential("abcd@gmail.com", "1234");
        mail.To.Add(TextBoxEmailID.Text);
        mail.Subject = "Password Recovery";
        mail.IsBodyHtml=true;
           mail.Body ="UserName: "+username+"'<br>Password="+password+"";
        smtp.Port =587;
        smtp.Host="smtp.gmail.com";
        smtp.EnableSsl = true;
        try
        {
            //con.Open();
            smtp.Send(mail);
        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = ex.Message;
        }
        finally
        {
           
        }
    }
}
