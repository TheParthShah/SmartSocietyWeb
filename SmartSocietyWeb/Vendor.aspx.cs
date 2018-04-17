using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vendor : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    public static JArray VendorData { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        VendorData = JArray.Parse(ServiceObjectGen.ViewAllVendors(0).ToString());
        rptVendor.DataSource = (VendorData);
        rptVendor.DataBind();
       
    }

    protected void rptVendor_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (VendorData.Count == 0)
        {
            Label lblEmpty = (Label)e.Item.FindControl("lblEmpty");
            lblEmpty.Visible = true;
        }
    }


    protected void btnSearch_Click(object sender, EventArgs e)
    {
        var id = txtSearch.Text;

        if(id != "")
        {
            VendorData = JArray.Parse(ServiceObjectGen.VendorSearch(id, id).ToString());

            rptVendor.DataSource = VendorData;
            rptVendor.DataBind();
        }
        
    }


   

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtnDelete = (LinkButton)sender;
        int ID = Convert.ToInt32(lnkbtnDelete.CommandArgument);
        ServiceObjectGen.VendorDelete(ID);
        Response.Redirect("Vendor.aspx");
    }
}