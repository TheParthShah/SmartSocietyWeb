using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Complains : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceobjAdmin = new SSAPIAdmin.AdminClient();
    public static JArray ComplaintData { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        ComplaintData = JArray.Parse(ServiceobjAdmin.GetAllComplaints(0,false).ToString());
        rptComplaints.DataSource = (ComplaintData);
        rptComplaints.DataBind();
        PanelSingleData.Visible = false;
    }

    protected void rptComplaints_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (ComplaintData.Count == 0)
        {
            Label lblEmpty = (Label)e.Item.FindControl("lblEmpty");
            lblEmpty.Visible = true;
        }
    }

    protected void lnkbtnInfo_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtnInfo = (LinkButton)sender;
        int ID = Convert.ToInt32(lnkbtnInfo.CommandArgument);
        var SingleObj = (from ob in ComplaintData
                         where Convert.ToInt32(ob["ComplaintID"]) == ID
                         select ob).Single();
        
        LitSubject.Text = SingleObj["Subject"].ToString();
        LitBody.Text = SingleObj["Description"].ToString();
        LitType.Text = SingleObj["ComplaintType"].ToString();
        LitComplaintOn.Text = Convert.ToDateTime( SingleObj["CreatedOn"]).ToLongDateString();
        Litpriority.Text = SingleObj["Priority"].ToString();
        //if (SingleObj["Response"].ToString() != null)
        //{
        //    panelResponse.Visible = true;
        //    LitHandledBy.Text = SingleObj["HandledBy"].ToString();
        //    LitHandledOn.Text = Convert.ToDateTime( SingleObj["RespondedOn"]).ToLongDateString();
        //    LitResponse.Text = SingleObj["Response"].ToString();
        //}
           
       
        PanelGridView.Visible = false;
        PanelSingleData.Visible = true;
    }

    protected void back_Click(object sender, EventArgs e)
    {
        PanelSingleData.Visible = false;
        PanelGridView.Visible = true;
    }
}