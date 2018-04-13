using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberDetails : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGeneral = new SSAPIGen.GeneralClient();
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            BindData();
        }

    }

    private void BindData()
    {
        try
        {
            PlaceHolder2.Visible = false;
            object FlatDetailsObj = ServiceObjectGeneral.GetAllResidentsDetails(0,0);
            JArray FlatDetailsObjArr = JArray.Parse(FlatDetailsObj.ToString());
            rptResident.DataSource = FlatDetailsObjArr;
            rptResident.DataBind();
        }
        catch(Exception e)
        {
            Response.Write("<script>alert(\"Something went wrong! Try Again.\")</script>");
        }
    }

 

    protected void InactiveResident_Click(object sender, EventArgs e)
    {
        
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {

    }

    protected void back_Click(object sender, EventArgs e)
    {
        PlaceHolder2.Visible = false;
        PlaceHolder1.Visible = true;
    }
}