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
    public partial class payment : System.Web.UI.Page
    {
        Concls ob = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            granttotal();

        }
        public void granttotal()
        {
            string p = "select sum(subtotal) from orderrr where user_id=" + Session["userid"] + "and order_status='order'";
            string jk = ob.fn_scalar(p);
            txtPaymentAmount.Text = jk;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string kl = "insert into account values(" + Session["userid"] + ",'" + ddlAccountType.SelectedItem.Text + "','" + txtAccountNumber.Text + "','" + TextBox1.Text + "')";
            int i = ob.fn_nonquery(kl);
            if (i == 1)
            {
                pnlPayment.Visible = true;
                pnlAccount.Visible = false;
            }
            else
            {
                pnlAccount.Visible = true;
                pnlPayment.Visible = false;
            }
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            bal2.ServiceClient obj3 = new bal2.ServiceClient();
            string o = obj3.balancheck(txtAccountNumber.Text);
            int r = Convert.ToInt32(txtPaymentAmount.Text);
            int n = Convert.ToInt32(o);
            if (n < r)
            {
                lblPayStatus.Text = "insufficent balance";
            }
            else
            {
                string f = "select product_id from orderrr where user_id=" + Session["userid"] + "and order_status='order'";
                SqlDataReader dr = ob.fn_reader(f);
                List<string> pdlist = new List<string>();
                while (dr.Read())
                {
                    pdlist.Add((dr["product_id"].ToString()));
                }
                foreach (string productid in pdlist)
                {
                    string d = "select * from orderrr where product_id=" + productid + "and user_id=" + Session["userid"] + "";
                    SqlDataReader dv = ob.fn_reader(d);
                    string qty = "";
                    while (dv.Read())
                    {

                        qty = (dv["quantity"].ToString());
                    }
                    string vb = "update orderrr set order_status='payed' where user_id=" + Session["userid"] + "and product_id=" + productid + "";
                    int i = ob.fn_nonquery(vb);


                    string b = "select product_stock from productt where product_id=" + productid + "";
                    string ni = ob.fn_scalar(b);
                    int oldStock = Convert.ToInt32(ni);

                    int orderedQty = Convert.ToInt32(qty);

                    int updatedStock = oldStock - orderedQty;

                    string up = "update productt set product_stock=" + updatedStock + " where product_id=" + productid;
                    int aw = ob.fn_nonquery(up);

                }
                string df = "select balance_amount from account where user_id=" + Session["userid"] + "and account_number='" + txtAccountNumber.Text + "'";
                string gh = ob.fn_scalar(df);
                int jk = Convert.ToInt32(gh);
                int kl = Convert.ToInt32(txtPaymentAmount.Text);
                int ds = jk - kl;



                int uid = Convert.ToInt32(Session["userid"]);
                int j = obj3.amountreduce(txtAccountNumber.Text, uid, ds);
                lblPayStatus.Text = "payed";
                Response.Redirect("feedback.aspx");
            }
        }

        protected void txtAccountNumber_TextChanged(object sender, EventArgs e)
        {
            string p = "select count(account_number) from account where user_id=" + Session["userid"] + "and account_number=" + txtAccountNumber.Text + "";
            string f = ob.fn_scalar(p);
            int r = Convert.ToInt32(f);
            if (r == 1)
            {
                pnlPayment.Visible = true;
                pnlAccount.Visible = false;

            }
            else
            {
                pnlAccount.Visible = true;
                pnlPayment.Visible = false;
            }
        }
    }
}