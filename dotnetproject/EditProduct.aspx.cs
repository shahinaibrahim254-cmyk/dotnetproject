using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace dotnetproject
{
    public partial class EditProduct : System.Web.UI.Page
    {
        Concls ob = new Concls();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid();
            }


        }
        public void grid()
        {
            string p = "select *from productt";
            DataSet ds = ob.fn_adapter(p);
            GridView1.DataSource = ds;
            GridView1.DataBind();


            
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
            TextBox textprice = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
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
            string h = "update productt set product_status='" + textstatus.Text + "',product_description='" + textdesc.Text + "',product_price='" + textprice.Text + "',product_image='" + imgpath + "' where product_id=" + getid + "";
            int c = ob.fn_nonquery(h);
            if (c == 1)
            {
                Label2.Visible=true;
                Label2.Text = "updated";


                GridView1.EditIndex = -1;
                grid();
            }
            else
            {
                Label2.Text = "unable to update";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}