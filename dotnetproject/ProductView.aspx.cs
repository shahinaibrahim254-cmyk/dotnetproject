//using System;
//using System.Data;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace dotnetproject
//{
//    public partial class ProductView : System.Web.UI.Page
//    {
//        Concls ob = new Concls();

//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                if (Session["uid"] != null)
//                {
//                    int categoryId = Convert.ToInt32(Session["uid"]);

//                    // Fixed SQL: added space before AND
//                    string query = "select * from product where category_id=" + categoryId + " and product_status='available'";
//                    DataSet ds = ob.fn_adapter(query);
//                    dlProducts.DataSource = ds;
//                    dlProducts.DataBind();
//                }
//            }
//        }

//        protected void ImageButton1_Command(object sender, CommandEventArgs e)
//        {
//            int getid = Convert.ToInt32(e.CommandArgument);
//            Session["pid"] = getid;
//            Response.Redirect("ProductDetails.aspx");
//        }
//    }
//}
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetproject
{
    public partial class ProductView : System.Web.UI.Page
    {
        Concls ob = new Concls();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                {
                    int categoryId = Convert.ToInt32(Session["uid"]);
                    string p= "SELECT * FROM productt WHERE category_id=" + categoryId + " AND product_status='available'";
                    DataSet ds = ob.fn_adapter(p);
                    DataList1.DataSource = ds;
                   DataList1.DataBind();
                }
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {

            int getid = Convert.ToInt32(e.CommandArgument);
            Session["pid"] = getid;
            Response.Redirect("ProductDetails.aspx");

        }
    }

}

