using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddEvent : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["EventID"] != null)
            {
                EditBindData();
            }
            BindData();
        }
    }

    private void BindData()
    {
        var AssetTypeData = JArray.Parse(ServiceObjectAdmin.GetAllEventTypes().ToString());
        ddEventType.DataSource = AssetTypeData;
        ddEventType.DataTextField = "EventTypeName";
        ddEventType.DataValueField = "EventTypeID";
        ddEventType.DataBind();
    }

    private void EditBindData()
    {
        var EventData = JObject.Parse(ServiceObjectGen.ViewAllEvents("0","0",0,Convert.ToInt32(Request.QueryString["VendorID"])).ToString());
        txtEventName.Text = EventData["EventName"].ToString();
        ddEventType.SelectedValue = EventData["EventType"].ToString();
        TxtVenue.Text = EventData["Venue"].ToString();
        txtStartTime.Text = Convert.ToDateTime(EventData["StartTime"]).ToShortDateString();
        txtEndTime.Text = Convert.ToDateTime(EventData["EndTime"]).ToShortDateString();
        txtSubject.Text = EventData["Subject"].ToString();
        txtdescription.Text =  EventData["Description"].ToString();
        ddpriority.SelectedValue = EventData["Priority"].ToString();

    }

    protected void btncancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddEvent.aspx");
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        ServiceObjectAdmin.AddEvent(txtEventName.Text, Convert.ToInt32( ddEventType.SelectedValue), TxtVenue.Text, txtStartTime.Text, txtEndTime.Text, txtSubject.Text, txtdescription.Text, Convert.ToInt32( ddpriority.SelectedValue), 1);
        Response.Redirect("Events.aspx");
    }
}