using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetproject
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        Concls ob = new Concls();

        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select *from productt where product_id=" + Session["pid"] + "";
            SqlDataReader dr = ob.fn_reader(s);
            if (dr.Read())
            {
                imgProduct.ImageUrl = dr["product_image"].ToString();
                lblName.Text = dr["product_name"].ToString();
                lblDescription.Text = dr["product_description"].ToString();
                lblPrice.Text = dr["product_price"].ToString();
            }
                
                
                
        }
        public void stock()
        {
            string n = "select product_stock from productt where product_id=" + Session["pid"] + "";
            string i = ob.fn_scalar(n);
            int j = Convert.ToInt32(i);
            if (j< Convert.ToInt32(txtQuantity.Text))
            {
                Label1.Visible = true;
                Label1.Text = "quantity exeeded product stock";
            }
            else
            {
                Label1.Visible = false;
            }
        }

        protected void btnIncrease_Click(object sender, EventArgs e)
        {
            int quantity;
            string o = txtQuantity.Text;
            if (o == "")
            {
                quantity = 0;
                txtQuantity.Text = Convert.ToString(quantity);
            }
            else
            {
                int newquantity = Convert.ToInt32(txtQuantity.Text);
                quantity = newquantity + 1;
                txtQuantity.Text = Convert.ToString(quantity);
            }
            stock();
        }

        protected void btnDecrease_Click(object sender, EventArgs e)
        {
            int quantity;
            string o = txtQuantity.Text;
            if (o == "")
            {
                quantity = 0;
                txtQuantity.Text = Convert.ToString(quantity);
            }
            else
            {
                int newquantity = Convert.ToInt32(txtQuantity.Text);
                quantity = newquantity - 1;
                txtQuantity.Text = Convert.ToString(quantity);
            }
            stock();
        }

        protected void txtQuantity_TextChanged(object sender, EventArgs e)
        {
            stock();
        }

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            int p = Convert.ToInt32(txtQuantity.Text);
            string s = "select product_price from productt where product_id =" + Session["pid"] + "";
            string m = ob.fn_scalar(s);
            int n = Convert.ToInt32(m);
            int subtotal = n * p;
            string h = "insert into cartt values(" + Session["pid"] + "," + Session["userid"] + "," + txtQuantity.Text + ",1," + subtotal + ")";
            int b = ob.fn_nonquery(h);
            if (b == 1)
            {
                Label2.Visible = true;
                Label2.Text = "inserted";
            }
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHome.aspx");
        }
    }
}
