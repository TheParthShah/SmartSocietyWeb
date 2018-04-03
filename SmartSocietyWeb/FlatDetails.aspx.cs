using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FlatDetails : System.Web.UI.Page
{
    SSAPIGen.GeneralClient GenSObj = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        object FlatDetailsObj = GenSObj.GetAllFlatDetails(0);
        JArray FlatDetailsObjArr = JArray.Parse(FlatDetailsObj.ToString());
        rptFlatDetails.DataSource = FlatDetailsObjArr;
        rptFlatDetails.DataBind();
    }
}