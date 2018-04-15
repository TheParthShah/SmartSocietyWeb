using Newtonsoft.Json.Linq;
using System;

public partial class SocietyProfile : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    JObject SocietyData;
    public static int flag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        EditSocietyProfile.Visible = false;
        SocietyProfileInfo.Visible = true;

        if (!IsPostBack)
        {
            BindData();
        }

    }

    private void BindData()
    {
        try
        {
            SocietyData = JObject.Parse(ServiceObjectAdmin.GetSocietyInformation().ToString());
            litSocietyTitle.Text = SocietyData["Name"].ToString();
            litSocietyName.Text = SocietyData["Name"].ToString();
            litSocietyType.Text = SocietyData["SocietyType"].ToString();
            litPhoneNo.Text = SocietyData["ContactNo"].ToString();
            litEmail.Text = SocietyData["Email"].ToString();
            litSecretaryName.Text = SocietyData["PresidentName"].ToString();
            litBuilderName.Text = SocietyData["Builder"].ToString();
            litRegistrationNo.Text = SocietyData["RegistrationNo"].ToString();
            litAddress.Text = SocietyData["Address"].ToString() + "<br>" + SocietyData["PostalCode"].ToString();
            litCampusArea.Text = SocietyData["CampusArea"].ToString();
            imgLogo.ImageUrl += SocietyData["LogoImage"].ToString();

        }
        catch (Exception e)
        {
            Response.Write("<script>alert(\"Something went wrong! Try Again.\")</script>");
        }
    }

    protected void btnEditSocietyProfile_Click(object sender, EventArgs e)
    {
        EditSocietyProfile.Visible = true;
        SocietyProfileInfo.Visible = false;
        SocietyData = JObject.Parse(ServiceObjectAdmin.GetSocietyInformation().ToString());

        txtSocietyName.Text = SocietyData["Name"].ToString();
        ddSocietyType.SelectedValue = SocietyData["SocietyType"].ToString();
        txtContactNo.Text = SocietyData["ContactNo"].ToString();
        txtEmail.Text = SocietyData["Email"].ToString();
        txtSecretary.Text = SocietyData["PresidentName"].ToString();
        txtBuilder.Text = SocietyData["Builder"].ToString();
        txtRegistrationNo.Text = SocietyData["RegistrationNo"].ToString();
        txtAddress.Text = SocietyData["Address"].ToString();
        txtPincode.Text = SocietyData["PostalCode"].ToString();
        txtCampusArea.Text = SocietyData["CampusArea"].ToString();
        hdnFilename.Value = SocietyData["LogoImage"].ToString();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        var Logo = "";
        Boolean fileOK = false;
        String path = Server.MapPath("~/ServerImages/");
        if (flUpImage.PostedFile.FileName != "")
        {
            String fileExtension =
                System.IO.Path.GetExtension(flUpImage.PostedFile.FileName).ToLower();
            String[] allowedExtensions =
                { ".png", ".jpeg", ".jpg"};
            for (int i = 0; i < allowedExtensions.Length; i++)
            {
                if (fileExtension == allowedExtensions[i])
                {
                    fileOK = true;
                }
            }
        }

        if (fileOK)
        {
            try
            {
                flUpImage.PostedFile.SaveAs(path
                    + flUpImage.PostedFile.FileName);
                Logo = flUpImage.PostedFile.FileName;
                lblAlert.Text = "File uploaded!";
            }
            catch (Exception ex)
            {
                Logo = "0";
                Response.Write("<script>alert(\"File could not be uploaded\");</script>");
            }
        }
        else
        {
            if (!(flUpImage.PostedFile.FileName == ""))
            {
                Response.Write("<script>alert(\"Cannot accept files of this type\");</script>");
            }
            Logo = "0";
        }
        if (Logo == "0")
        {
            flag = 1;
            ServiceObjectAdmin.EditSocietyInformation(txtSocietyName.Text, txtAddress.Text, txtPincode.Text, hdnFilename.Value, txtContactNo.Text, txtSecretary.Text, txtBuilder.Text, txtEmail.Text, "", txtRegistrationNo.Text, txtCampusArea.Text, ddSocietyType.SelectedValue, "");
            Response.Redirect("SocietyProfile.aspx");
        }
        else
        {
            ServiceObjectAdmin.EditSocietyInformation(txtSocietyName.Text, txtAddress.Text, txtPincode.Text, Logo, txtContactNo.Text, txtSecretary.Text, txtBuilder.Text, txtEmail.Text, hdnFilename.Value, txtRegistrationNo.Text, txtCampusArea.Text, ddSocietyType.SelectedValue, "");
            Response.Redirect("SocietyProfile.aspx");
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("SocietyProfile.aspx");
    }
}