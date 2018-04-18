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
        ServiceObjectAdmin.AddNotice(txtNotice.Text, txtDescription.Text,Convert.ToInt32(ddPriority.SelectedValue),1, Convert.ToInt32(ddReceipient.SelectedValue));
        Response.Redirect("NoticeData.aspx");
    }

    protected void btnWaterSupply_Click(object sender, EventArgs e)
    {
        txtDescription.Text = "As we have got informed by VMC, Water supply will be less than the routine water supply, tomorrow. So, keep your buckets filled for tomorrow's use.";
    }

    protected void btnMaintenace_Click(object sender, EventArgs e)
    {
        txtDescription.Text = "We have't got the maintenance for this month from many of the flatholders. Pay it as soon as possible. Ignore, if you have already paid.";
    }

    protected void btnMeeting_Click(object sender, EventArgs e)
    {
        txtDescription.Text = "We have an general monthly meeting scheduled tomorrow at 9pm. Do come.";
    }

    protected void btnElectricity_Click(object sender, EventArgs e)
    {
        txtDescription.Text = "";
    }
}