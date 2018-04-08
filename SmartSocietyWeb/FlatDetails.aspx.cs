using Newtonsoft.Json.Linq;
using System;

public partial class FlatDetails : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGeneral = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        object FlatDetailsObj = ServiceObjectGeneral.GetAllFlatDetails(0);
        JArray FlatDetailsObjArr = JArray.Parse(FlatDetailsObj.ToString());
        rptFlatDetails.DataSource = FlatDetailsObjArr;
        rptFlatDetails.DataBind();
    }
}