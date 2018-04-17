using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddVendor : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["VendorID"] != null)
            {
                EditBindData();
            }
            BindData();
        }
    }

    private void EditBindData()
    {
        var VendorData = JObject.Parse(ServiceObjectGen.ViewAllVendors(Convert.ToInt32(Request.QueryString["VendorID"])).ToString());
        txtVendorName.Text = VendorData["VendorNAme"].ToString();
        txtAddress.Text = VendorData["Address"].ToString();
        ddVendorType.SelectedValue = VendorData["VendorType"].ToString();
        txtdescription.Text = VendorData["Description"].ToString();
    }

    private void BindData()
    {
       
    }

   

    protected void btncancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddVendor.aspx");
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        ServiceObjectAdmin.AddNewVendor(txtVendorName.Text,txtAddress.Text,"",ddVendorType.SelectedValue,txtdescription.Text).ToString();
        Response.Redirect("Vendor.aspx");
    }
}