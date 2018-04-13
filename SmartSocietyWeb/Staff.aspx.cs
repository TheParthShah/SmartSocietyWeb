using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    public static JArray StaffData { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
       StaffData = JArray.Parse(ServiceObjectGen.GetAllStaffMembers(0).ToString());
        rptStaff.DataSource = (StaffData);
        rptStaff.DataBind();
        PanelSingleData.Visible = false;
    }



    protected void btnInfo_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtnInfo = (LinkButton)sender;
        int ID = Convert.ToInt32(lnkbtnInfo.CommandArgument);
        var SingleObj = (from ob in StaffData
                         where Convert.ToInt32(ob["MemberID"]) == ID
                         select ob).Single();
        LitName.Text = SingleObj["MemberName"].ToString();
        LitType.Text = SingleObj["MemberType"].ToString();
        LitStatus.Text = SingleObj["IsActive"].ToString();
        LitContactNo.Text = SingleObj["ContactNo1"].ToString() + " , " + SingleObj["ContactNo2"].ToString();
        LitDOB.Text = Convert.ToDateTime(SingleObj["DOB"]).ToLongDateString();
        LitDOJ.Text = Convert.ToDateTime(SingleObj["DOJ"]).ToLongDateString();
       LitAddress.Text = SingleObj["Address"].ToString();
        PlaceHolder1.Visible = false;
        PanelSingleData.Visible = true;
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        PlaceHolder1.Visible = true;
        PanelSingleData.Visible = false;
    }
}