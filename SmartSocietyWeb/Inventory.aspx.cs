using System;
using System.Web.UI.WebControls;
using Newtonsoft;
using Newtonsoft.Json.Linq;
using System.Linq;
using System.Web.UI;

public partial class Inventory : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    public static JArray AssetData { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        AssetData = JArray.Parse(ServiceObjectGen.ViewAllAssets(0).ToString());
        rptInventory.DataSource = (AssetData);
        rptInventory.DataBind();
        PanelSingleData.Visible = false;
    }

    protected void lnnkbtnInfo_Click(object sender, EventArgs e)
    {
        //AssetData = JArray.Parse(ServiceObjectGen.ViewAllAssets(0).ToString());
        LinkButton lnkbtnInfo = (LinkButton)sender;
        int ID = Convert.ToInt32(lnkbtnInfo.CommandArgument);
        var SingleObj = (from ob in AssetData
                         where Convert.ToInt32(ob["AssetID"]) == ID
                         select ob).Single();
        litInventoryName.Text = SingleObj["AssetName"].ToString();
        litInventoryType.Text = SingleObj["AssetTypeName"].ToString();
        litInventoryValue.Text = SingleObj["AssetValue"].ToString();
        litDOP.Text = SingleObj["PurchasedOn"].ToString();
        litStatus.Text = SingleObj["Status"].ToString();
        imgAssetImage.ImageUrl += SingleObj["Image"].ToString();
        PanelGridView.Visible = false;
        PanelSingleData.Visible = true;
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        PanelGridView.Visible = true;
        PanelSingleData.Visible = false;
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (txtSearch.Text != "")
        {
            AssetData = JArray.Parse(ServiceObjectGen.AssetSearch(txtSearch.Text,txtSearch.Text).ToString());
            rptInventory.DataSource = (AssetData);
            rptInventory.DataBind();
            PanelSingleData.Visible = false;
        }
        else
        {
            Response.Redirect("Inventory.aspx");
        }
    }

    protected void lnkbtnDelete_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtnDelete = (LinkButton)sender;
        int ID =Convert.ToInt32(lnkbtnDelete.CommandArgument);
        ServiceObjectGen.AssetDelete(ID);
        Response.Redirect("Inventory.aspx");
    }
}