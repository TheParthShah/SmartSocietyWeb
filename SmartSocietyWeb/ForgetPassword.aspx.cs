using System;

public partial class ForgetPassword : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceObject = new SSAPIAdmin.AdminClient();

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
            lblAlert.Text = "Password reset link sent to you by email.";
        }
        else if(result == "False")
        {
            txtUserName.Text = "No Mail";
        }
        else
        {
            txtUserName.Text = "Cannot Mail";
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