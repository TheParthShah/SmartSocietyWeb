using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;

public partial class Polls : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }

    private void BindData()
    {
        var EndedPolls = JArray.Parse(ServiceObjectGen.GetAllPolls(0, false).ToString());
        
        rptPolls.DataSource = EndedPolls;
        rptPolls.DataBind();
        foreach(RepeaterItem item in rptPolls.Items)
        {
            HiddenField hdnPollID = (HiddenField)item.FindControl("hdnPollID");
            Repeater rptOptions = (Repeater)item.FindControl("rptOptions");
            var PollResultsData = JArray.Parse(ServiceObjectGen.GetPollResults(Convert.ToInt32(hdnPollID.Value)).ToString());
            rptOptions.DataSource = PollResultsData;
            rptOptions.DataBind();
            foreach(RepeaterItem item1 in rptOptions.Items)
            {
                HiddenField hdnOptionWidth = (HiddenField)item1.FindControl("hdnOptionWidth");
                HtmlControl divProgBar = (HtmlControl)item1.FindControl("divProgBar");
                divProgBar.Style.Add("width", hdnOptionWidth.Value);
            }
        }
    }
}