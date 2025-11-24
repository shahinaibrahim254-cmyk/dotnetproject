using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace dotnetproject
{
    public partial class ViewBill : System.Web.UI.Page
    {
        Concls ob = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string f = "SELECT dbo.usertab.user_name, dbo.usertab.email, dbo.usertab.phone, dbo.usertab.address, dbo.bill.grant_total FROM  dbo.bill INNER JOIN dbo.usertab ON dbo.bill.user_id = dbo.usertab.user_id where dbo.usertab.user_id=" + Session["userid"] + " and dbo.bill.bill_id="+Session["billid"] +"";

            SqlDataReader dr = ob.fn_reader(f);
            if (dr.Read())
            {
                lblName.Text = dr["user_name"].ToString();
               lblEmail.Text = dr["email"].ToString();
                lblAddress.Text = dr["address"].ToString();
                lblPhone.Text = dr["phone"].ToString();
                lblTotal.Text = dr["grant_total"].ToString();
            }
            string j = " SELECT dbo.productt.product_name, dbo.productt.product_price, dbo.orderrr.quantity, dbo.orderrr.subtotal FROM dbo.orderrr INNER JOIN dbo.productt ON dbo.orderrr.product_id = dbo.productt.product_id  where dbo.orderrr.user_id=" + Session["userid"] + "";
            DataSet ds = ob.fn_adapter(j);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("payment.aspx");
        }
    }
}