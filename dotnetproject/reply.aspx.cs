using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace dotnetproject
{

    public partial class reply : System.Web.UI.Page
    {
        Concls ob = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select email from admin where admin_id=" + Session["userid"] + "";
            SqlDataReader dr = ob.fn_reader(s);
            while (dr.Read())
            {
                txtFrom.Text = dr["email"].ToString();
            }
            string z = "SELECT dbo.usertab.email FROM dbo.usertab INNER JOIN dbo.feedback ON dbo.usertab.user_id = dbo.feedback.user_id where dbo.feedback.feedback_id=" + Session["feedid"] + "";
            SqlDataReader dr1 = ob.fn_reader(z);
            while (dr1.Read())
            {
                txtTo.Text = dr1["email"].ToString();
            }


        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string s = "select admin_name from admin where admin_id=" + Session["userid"] + "";
            string cv = ob.fn_scalar(s);
            string z = "SELECT dbo.usertab.user_name FROM dbo.usertab INNER JOIN dbo.feedback ON dbo.usertab.user_id = dbo.feedback.user_id where dbo.feedback.feedback_id=" + Session["feedid"] + "";
            string gh = ob.fn_scalar(z);

            SendEmail2(cv, txtFrom.Text, "jkrz bjje hycr rras", gh, txtTo.Text, txtSubject.Text, txtBody.Text);
        }
        public static void SendEmail2(string yourname, string yourGmailUserName, string yourGmailPassword, string tonaame, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}