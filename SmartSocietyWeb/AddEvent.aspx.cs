using Newtonsoft.Json.Linq;
using System;

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
            else
            {
                BindData();
            }
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
        var json = ServiceObjectGen.ViewAllEvents("0", "0", 0, Convert.ToInt32(Request.QueryString["VendorID"])).ToString();
        var EventData = JArray.Parse(json);
        txtEventName.Text = EventData[0]["EventName"].ToString();
        ddEventType.SelectedValue = EventData[0]["EventTypeName"].ToString();
        TxtVenue.Text = EventData[0]["Venue"].ToString();
        txtStartTime.Text = Convert.ToDateTime(EventData[0]["StartTime"]).ToString("yyyy-MM-dd");
        txtEndTime.Text = Convert.ToDateTime(EventData[0]["EndTime"]).ToString("yyyy-MM-dd");
        txtSubject.Text = EventData[0]["Subject"].ToString();
        txtdescription.Text =  EventData[0]["Description"].ToString();
        ddpriority.SelectedValue = EventData[0]["Priority"].ToString();

    }

    protected void btncancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddEvent.aspx");
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if(Request.QueryString["EventID"] == null)
        {
            ServiceObjectAdmin.AddEvent(txtEventName.Text, Convert.ToInt32(ddEventType.SelectedValue), TxtVenue.Text, txtStartTime.Text, txtEndTime.Text, txtSubject.Text, txtdescription.Text, Convert.ToInt32(ddpriority.SelectedValue), 1);
            Response.Redirect("Events.aspx");
        }
        else
        {
            ServiceObjectAdmin.EditEvent(Convert.ToInt32(Request.QueryString["EventID"]), txtEventName.Text, Convert.ToInt32(ddEventType.SelectedValue), TxtVenue.Text, txtStartTime.Text, txtEndTime.Text, txtSubject.Text, txtdescription.Text, Convert.ToInt32(ddpriority.SelectedValue), 1, true);
            Response.Redirect("Events.aspx");
        }
        
    }
}