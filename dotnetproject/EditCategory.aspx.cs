using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetproject
{
    public partial class EditCategory : System.Web.UI.Page
    {
        Concls ob = new Concls();
        public void grid()
        {

            string s = "select * from category ";
            GridView1.DataSource = ob.fn_adapter(s);
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid();
            }

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox textstatus = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            TextBox textdesc = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            //TextBox textprice = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            FileUpload fileupload = (FileUpload)GridView1.Rows[i].FindControl("FileUpload1");
            HiddenField hiddenoldimage = (HiddenField)GridView1.Rows[i].FindControl("HiddenField1");
            string imgpath = hiddenoldimage.Value;
            if (fileupload != null && fileupload.HasFile)
            {
                string filename = Path.GetFileName(fileupload.FileName);
                string uploadpath = Server.MapPath("~/picture/") + filename;
                fileupload.SaveAs(uploadpath);
                imgpath = "~/picture/" + filename;
            }
            string h = "update category set category_status='" + textstatus.Text + "',category_description='" + textdesc.Text + "',category_image='" + imgpath + "' where category_id=" + getid + "";
            int c = ob.fn_nonquery(h);
            if (c == 1)
            {
                Label1.Visible = true;
                Label1.Text = "updated";

                GridView1.EditIndex = -1;
                grid();
            }
            else
            {
                Label1.Text = "unable to edit";
            }
        }
    }
}
//using System;
//using System.Data;
//using System.Data.SqlClient;
//using System.Web.UI.WebControls;

//namespace dotnetproject
//{
//    public partial class EditCategory : System.Web.UI.Page
//    {
//        Concls ob = new Concls();

//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                BindGrid();
//            }
//        }

//        public void BindGrid()
//        {
//            string q = "SELECT * FROM category";
//            DataSet ds = ob.fn_adapter(q);
//            GridView1.DataSource = ds;
//            GridView1.DataBind();
//        }

//        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
//        {
//            GridView1.EditIndex = e.NewEditIndex;
//            BindGrid();
//        }

//        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
//        {
//            GridView1.EditIndex = -1;
//            BindGrid();
//        }

//        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
//        {
//            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

//            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
//            string status = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
//            string desc = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

//            string query = "UPDATE category SET category_name='" + name + "', category_status='" + status + "', Category_description='" + desc + "' WHERE category_id=" + id;
//            ob.fn_nonquery(query);

//            GridView1.EditIndex = -1;
//            BindGrid();
//        }
//    }
//}
