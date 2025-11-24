using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetproject
{
    public partial class AddCategory : System.Web.UI.Page
    {
        Concls ob = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {



            string p = "~/picture/" + fuCategoryImage.FileName;
            fuCategoryImage.SaveAs(MapPath(p));
            string ins = "insert into category values('" + txtCategoryName.Text + "','" + p + "','available','" + txtDescription.Text + "')";
            int i = ob.fn_nonquery(ins);
            if (i == 1)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "inserted";

            }
        }
    }
}