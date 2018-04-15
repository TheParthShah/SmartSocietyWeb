using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNotice : System.Web.UI.Page
{

    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btncancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddNotice.aspx");
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        //ServiceObjectAdmin.AddNotice(txtNotice.Text, txtDescription.Text,);
    }



    protected void btnWaterSupply_Click(object sender, EventArgs e)
    {
        txtDescription.Text = "";
    }

    protected void btnMaintenace_Click(object sender, EventArgs e)
    {
        txtDescription.Text = "";
    }

    protected void btnMeeting_Click(object sender, EventArgs e)
    {
        txtDescription.Text = "";
    }

    protected void btnElectricity_Click(object sender, EventArgs e)
    {
        txtDescription.Text = "";
    }
}