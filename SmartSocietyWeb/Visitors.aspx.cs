using Newtonsoft.Json.Linq;
using System;

public partial class Visitors : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        var VisitorsDataObj = ServiceObjectGen.ViewGateKeeping(false,"0","0","-1");
        var VisitorsDataArr = JArray.Parse(VisitorsDataObj.ToString());
        rptVisitorsData.DataSource = VisitorsDataArr;
        rptVisitorsData.DataBind();
    }

    public string MonthNumtoString(int MonthNum)
    {
        switch (MonthNum)
        {
            case 1:
                return "Jan";
            case 2:
                return "Feb";
            case 3:
                return "Mar";
            case 4:
                return "Apr";
            case 5:
                return "May";
            case 6:
                return "Jun";
            case 7:
                return "Jul";
            case 8:
                return "Aug";
            case 9:
                return "Sep";
            case 10:
                return "Oct";
            case 11:
                return "Nov";
            case 12:
                return "Dec";
            default:
                return "NA";
        }
    }

    protected void btnApply_Click(object sender, EventArgs e)
    {
        var VisitorsDataObj = ServiceObjectGen.ViewGateKeeping(false, Convert.ToDateTime(txtStartDate.Text).ToLongDateString(), Convert.ToDateTime(txtEndDate.Text).ToLongDateString(), "-1");
        var VisitorsDataArr = JArray.Parse(VisitorsDataObj.ToString());
        rptVisitorsData.DataSource = VisitorsDataArr;
        rptVisitorsData.DataBind();
        //Response.Write(Convert.ToDateTime(txtStartDate.Text).ToShortDateString());
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        var VisitorsDataObj = ServiceObjectGen.ViewGateKeeping(false, "0", "0", txtSearch.Text);
        var VisitorsDataArr = JArray.Parse(VisitorsDataObj.ToString());
        rptVisitorsData.DataSource = VisitorsDataArr;
        rptVisitorsData.DataBind();
    }
}