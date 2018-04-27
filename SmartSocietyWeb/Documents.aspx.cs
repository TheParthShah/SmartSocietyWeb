using System;
using Newtonsoft.Json.Linq;

public partial class Documents : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }

    private void BindData()
    {
        var DocData = JArray.Parse(ServiceObjectGen.GetAllDocuments().ToString());
        rptDocuments.DataSource = DocData;
        rptDocuments.DataBind();
    }
}