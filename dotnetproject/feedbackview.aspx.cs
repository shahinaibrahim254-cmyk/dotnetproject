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
    public partial class feedbackview : System.Web.UI.Page
    {
        Concls ob = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            string f = "SELECT dbo.usertab.user_id, dbo.usertab.user_name, dbo.feedback.feedback_id, dbo.feedback.receiver_message FROM dbo.usertab INNER JOIN dbo.feedback ON dbo.usertab.user_id = dbo.feedback.user_id where dbo.feedback.feedback_status=1";
            DataSet ds = ob.fn_adapter(f);
            GridView1.DataSource = ds;
        GridView1.DataBind();

        }

       

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["feedid"] = getid;
            Response.Redirect("reply.aspx");
        }

       
    }
}