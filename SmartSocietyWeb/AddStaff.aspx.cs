using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddStaff : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {

        //var Image = "";
        //var Doc = "";
        //Boolean fileOKImg = false;
        //Boolean fileOKDoc = false;
        //String path = Server.MapPath("~/ServerImages/Staff/");
        //if (fuimage.PostedFile.FileName != "")
        //{
        //    String fileExtensionImg =
        //        System.IO.Path.GetExtension(fuimage.PostedFile.FileName).ToLower();
        //    String[] allowedExtensionsImg =
        //        { ".png", ".jpeg", ".jpg"};

        //    for (int i = 0; i < allowedExtensionsImg.Length; i++)
        //    {
        //        if (fileExtensionImg == allowedExtensionsImg[i])
        //        {
        //            fileOKImg = true;
        //        }
        //    }
        //}
        //if (fudocument.PostedFile.FileName != "")
        //{
        //    String fileExtensionDoc =
        //        System.IO.Path.GetExtension(fuimage.PostedFile.FileName).ToLower();

        //    if (fileExtensionDoc == ".pdf")
        //    {
        //        fileOKDoc = true;
        //    }
        //}
        //if (fileOKDoc)
        //{
        //    try
        //    {
        //        fudocument.PostedFile.SaveAs(path
        //            + fudocument.PostedFile.FileName);
        //        Doc = fudocument.PostedFile.FileName.Replace(" ", "");
        //    }
        //    catch (Exception ex)
        //    {
        //        Doc = "0";
        //        Response.Write("<script>alert(\"Document File could not be uploaded\");</script>");
        //    }
        //}
        //else
        //{
        //    if (!(fudocument.PostedFile.FileName == ""))
        //    {
        //        Response.Write("<script>alert(\"Cannot accept files of this type\");</script>");
        //    }
        //    Doc = "0";
        //}
        //if (fileOKImg)
        //{
        //    try
        //    {
        //        fuimage.PostedFile.SaveAs(path
        //            + fuimage.PostedFile.FileName);
        //        Image = fuimage.PostedFile.FileName.Replace(" ", "");
        //    }
        //    catch (Exception ex)
        //    {
        //        Image = "0";
        //        Response.Write("<script>alert(\"Image File could not be uploaded\");</script>");
        //    }
        //}
        //else
        //{
        //    if (!(fuimage.PostedFile.FileName == ""))
        //    {
        //        Response.Write("<script>alert(\"Cannot accept files of this type\");</script>");
        //    }
        //    Image = "0";
        //}
        //if (hdnImageFile.Value == "" && hdnDocFile.Value == "")
        //{
        //    if (Image == "0" && Doc == "0")
        //    {
        //        ServiceObjectAdmin.AddAsset(txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), "", "", Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available");
        //        Response.Redirect("Invetory.aspx");
        //    }
        //    else if (Image != "0" && Doc == "0")
        //    {
        //        ServiceObjectAdmin.AddAsset(txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), Image, "", Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available");
        //        Response.Redirect("Invetory.aspx");
        //    }
        //    else if (Image == "0" && Doc != "0")
        //    {
        //        ServiceObjectAdmin.AddAsset(txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), "", Doc, Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available");
        //        Response.Redirect("Invetory.aspx");
        //    }
        //    else
        //    {
        //        ServiceObjectAdmin.AddAsset(txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), Image, Doc, Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available");
        //        Response.Redirect("Invetory.aspx");
        //    }
        //}
        //else
        //{
        //    if (Image == "0" && Doc == "0")
        //    {
        //        ServiceObjectAdmin.EditAsset(Convert.ToInt32(Request.QueryString["AssetID"]), txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), hdnImageFile.Value, hdnDocFile.Value, Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available", true);
        //        Response.Redirect("Invetory.aspx");
        //    }
        //    else if (Image != "0" && Doc == "0")
        //    {
        //        ServiceObjectAdmin.EditAsset(Convert.ToInt32(Request.QueryString["AssetID"]), txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), Image, hdnDocFile.Value, Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available", true);
        //        Response.Redirect("Invetory.aspx");
        //    }
        //    else if (Image == "0" && Doc != "0")
        //    {
        //        ServiceObjectAdmin.EditAsset(Convert.ToInt32(Request.QueryString["AssetID"]), txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), hdnImageFile.Value, Doc, Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available", true);
        //        Response.Redirect("Invetory.aspx");
        //    }
        //    else
        //    {
        //        ServiceObjectAdmin.EditAsset(Convert.ToInt32(Request.QueryString["AssetID"]), txtAssetName.Text, Convert.ToInt32(ddAssetType.SelectedValue), Image, Doc, Convert.ToInt32(txtValue.Text), txtPurchaseOn.Text, "Available", true);
        //        Response.Redirect("Invetory.aspx");
        //    }
        //}

        //ServiceObjectAdmin.AddStaffMember(txtStaffName.Text,ddMemberType.SelectedValue,txtDob.Text,txtContactNo1.Text,txtContactNo2.Text,Image,txtaddress.Text,txtDoj.Text,"",1).ToString();
        //Response.Redirect("Vendor.aspx");
    }

    protected void btnCancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddStaff.aspx");
    }
}