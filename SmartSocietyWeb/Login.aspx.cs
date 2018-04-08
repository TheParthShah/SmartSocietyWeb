using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       
        var result = ServiceObjectAdmin.CheckLogin(txtUsername.Text, txtPassword.Text);

        if(result == "False")
        {
            lblAlert.Text = "Opps! Wrong Credentials, Please Try again.";
        }
        else
        {
            JObject data = JObject.Parse(result);
            Session["ResidentID"] = (int)data["ResidentID"];
            Response.Redirect("Default.aspx");
        }
        
    }

}