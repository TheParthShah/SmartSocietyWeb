using System;
using Newtonsoft.Json.Linq;

public partial class AddInventory : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["AssetID"] != null)
            {
                EditBindData();
            }
            BindData();
        }        
    }

    private void EditBindData()
    {
        var AssetData = JObject.Parse(ServiceObjectGen.ViewAllAssets(Convert.ToInt32(Request.QueryString["AssetID"])).ToString());
        txtAssetName.Text = AssetData["AssetName"].ToString();
        txtDescription.Text = AssetData["Description"].ToString();
        txtPurchaseOn.Text = Convert.ToDateTime(AssetData["PurchasedOn"]).ToString("yyyy-MM-dd");
        txtValue.Text = AssetData["AssetValue"].ToString();
        ddAssetType.SelectedValue = (AssetData["AssetTypeID"]).ToString();
        hdnDocFile.Value = AssetData["InvoiceDoc"].ToString();
        hdnImageFile.Value = AssetData["Image"].ToString();
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
        var Image = "";
        var Doc = "";
        Boolean fileOKImg = false;
        Boolean fileOKDoc = false;
        String path = Server.MapPath("~/ServerImages/Assets/");
        if (flUpImage.PostedFile.FileName != "")
        {
            String fileExtensionImg =
                System.IO.Path.GetExtension(flUpImage.PostedFile.FileName).ToLower();
            String[] allowedExtensionsImg =
                { ".png", ".jpeg", ".jpg"};

            for (int i = 0; i < allowedExtensionsImg.Length; i++)
            {
                if (fileExtensionImg == allowedExtensionsImg[i])
                {
                    fileOKImg = true;
                }
            }
        }
        if (flUpDoc.PostedFile.FileName != "")
        {
            String fileExtensionDoc =
                System.IO.Path.GetExtension(flUpImage.PostedFile.FileName).ToLower();

            if (fileExtensionDoc == ".pdf")
            {
                fileOKDoc = true;
            }
        }
        if (fileOKDoc)
        {
            try
            {
                flUpDoc.PostedFile.SaveAs(path
                    + flUpDoc.PostedFile.FileName);
                Doc = flUpDoc.PostedFile.FileName.Replace(" ","");
            }
            catch (Exception ex)
            {
                Doc = "0";
                Response.Write("<script>alert(\"Document File could not be uploaded\");</script>");
            }
        }
        else
        {
            if (!(flUpDoc.PostedFile.FileName == ""))
            {
                Response.Write("<script>alert(\"Cannot accept files of this type\");</script>");
            }
            Doc = "0";
        }
        if (fileOKImg)
        {
            try
            {
                flUpImage.PostedFile.SaveAs(path
                    + flUpImage.PostedFile.FileName);
                Image = flUpImage.PostedFile.FileName.Replace(" ", "");
            }
            catch (Exception ex)
            {
                Image = "0";
                Response.Write("<script>alert(\"Image File could not be uploaded\");</script>");
            }
        }
        else
        {
            if (!(flUpImage.PostedFile.FileName == ""))
            {
                Response.Write("<script>alert(\"Cannot accept files of this type\");</script>");
            }
            Image = "0";
        }
        if(hdnImageFile.Value=="" && hdnDocFile.Value == "")
        {
            if (Image == "0" && Doc == "0")
            {
                ServiceObjectAdmin.AddAsset(txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), "", "", Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available");
                Response.Redirect("Invetory.aspx");
            }
            else if (Image != "0" && Doc == "0")
            {
                ServiceObjectAdmin.AddAsset(txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), Image, "", Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available");
                Response.Redirect("Invetory.aspx");
            }
            else if (Image == "0" && Doc != "0")
            {
                ServiceObjectAdmin.AddAsset(txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), "", Doc, Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available");
                Response.Redirect("Invetory.aspx");
            }
            else
            {
                ServiceObjectAdmin.AddAsset(txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), Image, Doc, Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available");
                Response.Redirect("Invetory.aspx");
            }
        }
        else
        {
            if (Image == "0" && Doc == "0")
            {
                ServiceObjectAdmin.EditAsset(Convert.ToInt32(Request.QueryString["AssetID"]),txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), hdnImageFile.Value, hdnDocFile.Value, Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available",true);
                Response.Redirect("Invetory.aspx");
            }
            else if (Image != "0" && Doc == "0")
            {
                ServiceObjectAdmin.EditAsset(Convert.ToInt32(Request.QueryString["AssetID"]), txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), Image, hdnDocFile.Value, Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available", true);
                Response.Redirect("Invetory.aspx");
            }
            else if (Image == "0" && Doc != "0")
            {
                ServiceObjectAdmin.EditAsset(Convert.ToInt32(Request.QueryString["AssetID"]), txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), hdnImageFile.Value, Doc, Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available", true);
                Response.Redirect("Invetory.aspx");
            }
            else
            {
                ServiceObjectAdmin.EditAsset(Convert.ToInt32(Request.QueryString["AssetID"]), txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), Image, Doc, Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available",true);
                Response.Redirect("Invetory.aspx");
            }
        }        
    }

    protected void lnkbtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddInventory.aspx");
    }
}