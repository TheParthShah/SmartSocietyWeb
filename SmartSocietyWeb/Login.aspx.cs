using Newtonsoft.Json.Linq;
using System;

public partial class Login : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();

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
            JObject ResObj=JObject.Parse(ServiceObjectGen.GetAllResidentsDetails(0, (int)data["ResidentID"]).ToString());
            Session["ResidentID"] = (int)data["ResidentID"];
            Session["ResidentName"] = ResObj["ResidentName"];
            Response.Redirect("Default.aspx");
        }
        
    }

}