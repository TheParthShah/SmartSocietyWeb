using System;
using Newtonsoft.Json.Linq;

public partial class AddInventory : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }

    private void BindData()
    {
        var AssetTypeData = JArray.Parse(ServiceObjectAdmin.GetAllAssetTypes().ToString());
        ddAssetType.DataSource = AssetTypeData;
        ddAssetType.DataTextField = "AssetTypeName";
        ddAssetType.DataValueField = "AssetTypeID";
        ddAssetType.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
    }
}