using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForgetPassword : System.Web.UI.Page
{
    SSAPI.GeneralClient ServiceObject = new SSAPI.GeneralClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        //string pageUrl = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
        if (Request.QueryString["Username"] == null)
        {
            PanelResetPassword.Visible = false;
            PanelForgetPassword.Visible = true;
        }
        else
        {
            PanelResetPassword.Visible = true;
            PanelForgetPassword.Visible = false;
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        var result = ServiceObject.ForgotPassword(txtUserName.Text);

        if (result == "True")
        {
            txtUserName.Text = "dsuf";
        }
        else if(result == "False")
        {
            txtUserName.Text = "nO mAIL";
        }
        else
        {
            txtUserName.Text = "Cannot MAil";
        }
    }

    protected void btnResetPassword_Click(object sender, EventArgs e)
    {
        if(txtNewPassword.Text == txtConfirmPassword.Text)
        {
            var result = ServiceObject.ResetPassword(Request.QueryString["Username"],txtConfirmPassword.Text);

            if (result == "True")
                Response.Redirect("Login.aspx");
            else
                txtConfirmPassword.Text = "Internal Server Error";
        }
        else
        {
            txtConfirmPassword.Text = "Internal Server Error";
        }

    }
}