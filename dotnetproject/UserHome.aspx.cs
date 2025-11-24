using System;
using System.Data;
using System.Web.UI.WebControls;

namespace dotnetproject
{
    public partial class UserHome : System.Web.UI.Page
    {
        Concls ob = new Concls();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string p = "select * from category";
                DataSet ds = ob.fn_adapter(p);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

       

        protected void ImageButton1_Command1(object sender, CommandEventArgs e)
        {

            int getid = Convert.ToInt32(e.CommandArgument);
            Session["uid"] = getid;
            Response.Redirect("ProductView.aspx");

        }
    }
}






//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Data;
//using System.Data.SqlClient;
//using System.Web.UI.WebControls;

//namespace dotnetproject
//{
//    public partial class UserHome : System.Web.UI.Page
//    {
//        Concls ob = new Concls();
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                string p = "select *from category";
//                DataSet ds = ob.fn_adapter(p);
//                DataList1.DataSource = ds;
//                DataList1.DataBind();
//            }


//        }

//        protected void dlCategories_SelectedIndexChanged(object sender, EventArgs e)
//        {

//        }

//        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
//        {

//        }

//        protected void ImageButton1_Command(object sender, CommandEventArgs e)
//        {
//            int getid = Convert.ToInt32(e.CommandArgument);
//            Session["uid"] = getid;
//            Response.Redirect("ProductView.aspx");
//        }

        //protected void ImageButton2_Command(object sender, CommandEventArgs e)
        //{
        //    int getid = Convert.ToInt32(e.CommandArgument);
        //    Session["uid"] = getid;
        //    Response.Redirect("productview.aspx");
        //}

        //protected void ImageButton5_Command(object sender, CommandEventArgs e)
        //{
        //    int getid = Convert.ToInt32(e.CommandArgument);
        //    Session["uid"] = getid;
        //    Response.Redirect("productview.aspx");

        //}

        //protected void ImageButton6_Command(object sender, CommandEventArgs e)
        //{
        //    int getid = Convert.ToInt32(e.CommandArgument);
        //    Session["uid"] = getid;
        //    Response.Redirect("productview.aspx");
        //}
    //}
    
//}