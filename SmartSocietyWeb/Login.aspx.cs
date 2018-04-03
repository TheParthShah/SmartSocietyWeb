using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    SSAPI.GeneralClient ServiceObject = new SSAPI.GeneralClient();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       
        var result = ServiceObject.CheckLogin(txtUsername.Text, txtPassword.Text);

        if(result == "False")
        {
            txtUsername.Text = "False";
        }
        else
        {
            JObject data = JObject.Parse(result);
            txtUsername.Text = (string)data["MemberType"];
        }
        
    }

}