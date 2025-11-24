using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dotnetproject
{
    public partial class UserRegister : System.Web.UI.Page
    {
        Concls ob = new Concls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            string sel = "select max(Reg_id) from login";
            string maxregid = ob.fn_scalar(sel);
            int reg_id = 0;
            if (maxregid == "")
            {
                reg_id = 1;

            }
            else
             {
                int newregid = Convert.ToInt32(maxregid);
                reg_id = newregid + 1;
            }
            string ins = "insert into usertab values(" + reg_id + ",'" + txtName.Text + "','" + txtEmail.Text + "'," + txtAge.Text + "," + txtPhone.Text + ",'" + txtAddress.Text + "','" + txtDelivery.Text + "','" + txtState.Text + "','" + txtDistrict.Text + "'," + txtPincode.Text + ",'active')";
            int i = ob.fn_nonquery(ins);
            if (i == 1)
            {
                string iinslog = "insert into login values(" + reg_id + ",'" + txtUsername.Text + "','" + txtPassword.Text + "','user')";
                int j = ob.fn_nonquery(iinslog);
                if (i == 1 && j == 1)
                {
                    Label1.Text = "successfully registered";
                }
                else
                {
                    Label1.Text = "Invalid entry";
                }
            }
        }
    }
}