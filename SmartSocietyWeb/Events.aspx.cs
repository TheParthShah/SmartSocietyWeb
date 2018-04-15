using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Events : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    SSAPIAdmin.AdminClient serviceObjectAdmin = new SSAPIAdmin.AdminClient();
    public static JArray EventData { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        EventData = JArray.Parse(ServiceObjectGen.ViewAllEvents("0","0",0,0).ToString());
        rptEvent.DataSource = (EventData);
        rptEvent.DataBind();
        PanelSingleData.Visible = false;
    }

    protected void lnkbtnInfo_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtnInfo = (LinkButton)sender;
        int ID = Convert.ToInt32(lnkbtnInfo.CommandArgument);
        var SingleObj = (from ob in EventData
                         where Convert.ToInt32(ob["EventID"]) == ID
                         select ob).Single();
       
        LitEventName.Text = SingleObj["EventName"].ToString();
        LitEndTime.Text = Convert.ToDateTime(SingleObj["EndTime"]).ToLongDateString();
        LitStartTime.Text = Convert.ToDateTime(SingleObj["StartTime"]).ToLongDateString();
        LitSubject.Text = SingleObj["Subject"].ToString();
        LitVenue.Text = SingleObj["Venue"].ToString();
        LitDesc.Text = SingleObj["Description"].ToString();

        panelGridView.Visible = false;
        PanelSingleData.Visible = true;
    }

    protected void rptEvent_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (EventData.Count == 0)
        {
            Label lblEmpty = (Label)e.Item.FindControl("lblEmpty");
            lblEmpty.Visible = true;
        }
    }

    protected void back_Click(object sender, EventArgs e)
    {
        PanelSingleData.Visible = false;
        panelGridView.Visible = true;
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        var id = txtSearch.Text;

        EventData = JArray.Parse(ServiceObjectGen.EventSearch(id,id).ToString());

        rptEvent.DataSource = EventData;
        rptEvent.DataBind();
    }

   

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtnInfo = (LinkButton)sender;
        int ID = Convert.ToInt32(lnkbtnInfo.CommandArgument);
        if ((bool)ServiceObjectGen.EventDelete(ID))
        {

        }
    }
}