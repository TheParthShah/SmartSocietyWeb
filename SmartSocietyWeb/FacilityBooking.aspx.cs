using Newtonsoft.Json.Linq;
using System;
using System.Linq;
using System.Web.UI.WebControls;

public partial class AssetBooking : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    public static JArray BookingData { get; set; }
    public static JArray BookingData1 { get; set; }
    public static JArray BookingData2 { get; set; }
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
        BookingData1 = JArray.Parse(ServiceObjectAdmin.ViewAllBookingProposals(1).ToString());
        rptFBA.DataSource = BookingData1;
        rptFBA.DataBind();
        BookingData2 = JArray.Parse(ServiceObjectAdmin.ViewAllBookingProposals(-1).ToString());
        rptFBD.DataSource = BookingData2;
        rptFBD.DataBind();
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
        LitFlatID.Text = SingleObj["FlatNo"].ToString();
        LitDesc.Text = SingleObj["Description"].ToString();
        LitFacilityName.Text = SingleObj["FacilityName"].ToString();
        LitStartTime.Text = Convert.ToDateTime(SingleObj["StartTime"]).ToLongDateString()+" "+ Convert.ToDateTime(SingleObj["StartTime"]).ToLongTimeString();
        LitEndTime.Text = Convert.ToDateTime(SingleObj["EndTime"]).ToLongDateString() + " " + Convert.ToDateTime(SingleObj["EndTime"]).ToLongTimeString();

        LitStatus.Text = SingleObj["Status"].ToString();

        if (SingleObj["Reason"].ToString() == null || SingleObj["Reason"].ToString() == "")
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
        Response.Redirect("FacilityBooking.aspx");
    }

    protected void btnApply_Click(object sender, EventArgs e)
    {
        if (txtStartDate.Text != "")
        {
            BookingData = JArray.Parse(ServiceObjectGen.FacilitiesBookingSearch("", Convert.ToDateTime(txtStartDate.Text).ToLongDateString()).ToString());
            rptBooking.DataSource = BookingData;
            rptBooking.DataBind();
            PanelSingleData.Visible = false;
        }
        else
        {
            Response.Redirect("FacilityBooking.aspx");
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (txtSearch.Text != "")
        {
            BookingData = JArray.Parse(ServiceObjectGen.FacilitiesBookingSearch(txtSearch.Text,"").ToString());
            rptBooking.DataSource = BookingData;
            rptBooking.DataBind();
            PanelSingleData.Visible = false;
        }
        else
        {
            Response.Redirect("FacilityBooking.aspx");
        }
    }

    protected void lnkbtnApprove_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtnApprove = (LinkButton)sender;
        string[] ID_Rate= lnkbtnApprove.CommandArgument.ToString().Split('-');
        int ID = Convert.ToInt32(ID_Rate[0]);
        decimal RatePerHour = Convert.ToDecimal(ID_Rate[1]);
        ServiceObjectAdmin.ApprovalOfBooking(ID, true, 1, RatePerHour, "");
        Response.Redirect("FacilityBooking.aspx");
    }

    protected void lnkbtnDisapprove_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtnDisapprove = (LinkButton)sender;
        string[] ID_Rate = lnkbtnDisapprove.CommandArgument.ToString().Split('-');
        int ID = Convert.ToInt32(ID_Rate[0]);
        decimal RatePerHour = Convert.ToDecimal(ID_Rate[1]);
        ServiceObjectAdmin.ApprovalOfBooking(ID, false, 1, RatePerHour, "");
        Response.Redirect("FacilityBooking.aspx");
    }
}