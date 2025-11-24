using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace dotnetproject
{
    public partial class Login : System.Web.UI.Page
    {
        Concls ob = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            string str = "select count(Reg_id)from login where username='" + txtEmail.Text + "'and password='" + txtPassword.Text + "'";
            string cid = ob.fn_scalar(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string str1 = "select Reg_id from login where username='" + txtEmail.Text + "'and password='" + txtPassword.Text + "'";
                string regid = ob.fn_scalar(str1);
                Session["userid"] = regid;

                string str2 = "select usertype from login where username='" +txtEmail.Text + "'and password='" + txtPassword.Text + "'";
                string logtype = ob.fn_scalar(str2);
                if (logtype == "admin")
                {
                    Response.Redirect("AdminHome.aspx");
                }
                else if (logtype == "user")
                {
                    Response.Redirect("UserHome.aspx");
                }
                Label2.Text = "successfully login";


            }
            else
            {
                Label2.Text = "Invalid username and password";
            }

            
        }
    }
}
