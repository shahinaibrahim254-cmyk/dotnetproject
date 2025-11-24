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
    public partial class AddProduct : System.Web.UI.Page
    {
        Concls ob = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select category_id,category_name from category";
                DataSet ds = ob.fn_adapter(s);
                ddlCategory.DataSource = ds;
                ddlCategory.DataTextField = "category_name";
                ddlCategory.DataValueField = "category_id";
                ddlCategory.DataBind();




            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string p = "~/picture/" + fuProductImage.FileName;
            fuProductImage.SaveAs(MapPath(p));
            string m = "insert into productt (category_id, product_name, product_image, product_description, product_price, product_stock, product_status) " +
           "values (" + ddlCategory.SelectedItem.Value + ", '" + txtProductName.Text.Replace("'", "''") + "', '" + p + "', '" + txtDescription.Text.Replace("'", "''") + "', '" + txtPrice.Text + "', '" + txtStock.Text + "', 'available')";


            int i = ob.fn_nonquery(m);
            if (i == 1)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "product added successfully";
            }
            else
            {
                lblMessage.Text = "unable to add product";
            }
        }
    }
}