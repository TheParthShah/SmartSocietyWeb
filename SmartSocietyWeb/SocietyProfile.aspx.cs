using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SocietyProfile : System.Web.UI.Page
{
    //SSAPIAdmin.AdminClient ServiceObject = new SSAPIAdmin.AdminClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        

        EditSocietyProfile.Visible = false;
        SocietyProfileInfo.Visible = true;
        //var data = ServiceObject.JSONData();

        //JObject data = JObject.Parse(ServiceObject.GetSocietyInformation().ToString());
        //txtSocietyName.Text = (string)data["Name"];
    }

    protected void btnEditSocietyProfile_Click(object sender, EventArgs e)
    {
        EditSocietyProfile.Visible = true;
        SocietyProfileInfo.Visible = false;

    }
}