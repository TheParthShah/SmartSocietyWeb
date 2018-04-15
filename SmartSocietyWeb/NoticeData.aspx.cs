using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NoticeData : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjGen = new SSAPIGen.GeneralClient();
    public static JArray NoticeArr { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }

    }

    private void BindData()
    {
        NoticeArr = JArray.Parse(ServiceObjGen.ViewAllNotices("0","0",0,0).ToString());
        rptNotice.DataSource = NoticeArr;
        rptNotice.DataBind();
    }

    protected void Unnamed_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
       
    }



    protected void btnApply_Click(object sender, EventArgs e)
    {
     
        NoticeArr = JArray.Parse(ServiceObjGen.ViewAllNotices(Convert.ToDateTime(txtStartDate.Text).ToLongDateString(), Convert.ToDateTime(txtEndDate.Text).ToLongDateString(),0,0).ToString());
        rptNotice.DataSource = (NoticeArr);
        rptNotice.DataBind();
    }
}