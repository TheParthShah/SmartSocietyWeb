using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AssetBooking : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    public static JArray BookingData { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        BookingData = JArray.Parse (ServiceObjectAdmin.ViewAllBookingProposals(0).ToString());
        rptBooking.DataSource = BookingData;
        rptBooking.DataBind();
        PanelSingleData.Visible = false;
    }

    protected void lnnkbtnInfo_Click(object sender, EventArgs e)
    {
        //AssetData = JArray.Parse(ServiceObjectGen.ViewAllAssets(0).ToString());
        LinkButton lnkbtnInfo = (LinkButton)sender;
        int ID = Convert.ToInt32(lnkbtnInfo.CommandArgument);
        var SingleObj = (from ob in BookingData
                         where Convert.ToInt32(ob["BookingID"]) == ID
                         select ob).Single();
        LitFlatID.Text = SingleObj["FlatID"].ToString();
        LitDesc.Text = SingleObj["Description"].ToString();
        LitFacilityName.Text = SingleObj["FacilityName"].ToString();
        //LitStartTime.Text = Convert.ToDateTime( SingleObj["StartTime"]).ToLongDateString();
        //LitEndTime.Text = Convert.ToDateTime(SingleObj["EndTime"]).ToLongDateString();

        LitStatus.Text = SingleObj["Status"].ToString();

        if (SingleObj["Reason"].ToString() == null)
            panelReason.Visible = false;
        else
            LitRason.Text = SingleObj["Reason"].ToString();
        PanelGridView.Visible = false;
        PanelSingleData.Visible = true;
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        PanelGridView.Visible = true;
        PanelSingleData.Visible = false;
    }
}