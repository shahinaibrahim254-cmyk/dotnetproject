using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace dotnetproject
{
    public partial class feedback : System.Web.UI.Page
    {
        Concls ob = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string s = "insert into feedback values(" + Session["userid"] + ",'" + txtFeedback.Text + "','nil',1)";
            int i = ob.fn_nonquery(s);
            if (i == 1)
            {
                lblMsg.Visible = true;
                lblMsg.Text = "successfully noted your feedback";
            }
            else
            {
                lblMsg.Visible = false;
                
            }
        }
    }
}