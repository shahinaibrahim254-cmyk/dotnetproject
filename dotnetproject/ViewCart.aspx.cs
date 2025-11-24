using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetproject
{
    public partial class ViewCart : System.Web.UI.Page
    {
        Concls ob = new Concls();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGrid();
                LoadGrandTotal();
            }
        }

        private void LoadGrid()
        {
            string q = @"SELECT c.cart_id, c.quantity, c.subtotal, p.product_name, p.product_price, p.product_image, p.product_id FROM cartt c JOIN productt p ON c.product_id = p.product_id WHERE c.user_id=" + Session["userid"] + " AND c.status=1";

            DataSet ds = ob.fn_adapter(q);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        private void LoadGrandTotal()
        {
            string q = @"SELECT ISNULL(SUM(subtotal),0) FROM cartt  WHERE user_id=" + Session["userid"] + " AND status=1";

            Label3.Text = ob.fn_scalar(q);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LoadGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int cartId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            TextBox txtQty = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtQuantity");
            int qty = Convert.ToInt32(txtQty.Text);

            string priceQuery = @"SELECT p.product_price FROM productt p JOIN cartt c ON p.product_id=c.product_id WHERE c.cart_id=" + cartId;

            int price = Convert.ToInt32(ob.fn_scalar(priceQuery));

            int subtotal = qty * price;

            string update = @"UPDATE cartt SET quantity=" + qty + ", subtotal = " + subtotal + "WHERE cart_id = " + cartId;

            ob.fn_nonquery(update);

            GridView1.EditIndex = -1;
            LoadGrid();
            LoadGrandTotal();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int cartId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            ob.fn_nonquery("DELETE FROM cartt WHERE cart_id=" + cartId);

            LoadGrid();
            LoadGrandTotal();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = @"SELECT * FROM cartt WHERE user_id=" + Session["userid"] + " AND status=1";

            SqlDataReader dr = ob.fn_reader(q);

            List<int> productIds = new List<int>();
            List<int> qtyList = new List<int>();
            List<int> subtotalList = new List<int>();
            List<int> cartIds = new List<int>();

            while (dr.Read())
            {
                productIds.Add(Convert.ToInt32(dr["product_id"]));
                qtyList.Add(Convert.ToInt32(dr["quantity"]));
                subtotalList.Add(Convert.ToInt32(dr["subtotal"]));
                cartIds.Add(Convert.ToInt32(dr["cart_id"]));
            }
            dr.Close();

            for (int i = 0; i < productIds.Count; i++)
            {
                string insertOrder = @"INSERT INTO orderrr (product_id,user_id,order_status,quantity,subtotal,order_date) VALUES(" + productIds[i] + "," + Session["userid"] +",'order'," + qtyList[i] + "," + subtotalList[i] +",'" + DateTime.Now.ToString("yyyy-MM-dd") + "')";

                ob.fn_nonquery(insertOrder);

                ob.fn_nonquery("UPDATE cartt SET status=0 WHERE cart_id=" + cartIds[i]);

                int stock = Convert.ToInt32(ob.fn_scalar("SELECT product_stock FROM productt WHERE product_id=" + productIds[i]));
                ob.fn_nonquery("UPDATE productt SET product_stock=" + (stock - qtyList[i]) + " WHERE product_id=" + productIds[i]);
            }

            string total = ob.fn_scalar("SELECT SUM(subtotal) FROM orderrr WHERE user_id=" + Session["userid"] + " AND order_status='order'");

            ob.fn_nonquery("INSERT INTO bill(user_id,grant_total,bill_date) VALUES(" + Session["userid"] + "," + total + ",'" + DateTime.Now.ToString("yyyy-MM-dd") + "')");

            string billId = ob.fn_scalar("SELECT MAX(bill_id) FROM bill WHERE user_id=" + Session["userid"]);
            Session["billid"] = billId;

            Response.Redirect("ViewBill.aspx");
        }
    }
}
