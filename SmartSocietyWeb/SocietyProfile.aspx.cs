using Newtonsoft.Json.Linq;
using System;

public partial class SocietyProfile : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    JObject SocietyData;
    protected void Page_Load(object sender, EventArgs e)
    {
        EditSocietyProfile.Visible = false;
        SocietyProfileInfo.Visible = true;
        SocietyData = JObject.Parse(ServiceObjectAdmin.GetSocietyInformation().ToString());
        if (!IsPostBack)
        {            
            BindData();
        }
        
    }

    private void BindData()
    {
        try
        {
            
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
        catch(Exception e)
        {
            Response.Write("<script>alert(\"Something went wrong! Try Again.\")</script>");
        }
    }

    protected void btnEditSocietyProfile_Click(object sender, EventArgs e)
    {
        EditSocietyProfile.Visible = true;
        SocietyProfileInfo.Visible = false;

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
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        var Logo = ""; 
        //if (fuImage.HasFile)
        //{
            Response.Write("<script>alert(\"Hello\");</script>");
            Logo = fuImage.FileName;
            fuImage.SaveAs("ServerImages/" + fuImage.FileName);
        //}
        
        ServiceObjectAdmin.EditSocietyInformation(txtSocietyName.Text, txtAddress.Text, txtPincode.Text, Logo, txtContactNo.Text, txtSecretary.Text, txtBuilder.Text, txtEmail.Text, "", txtRegistrationNo.Text, txtCampusArea.Text, ddSocietyType.SelectedValue, "");
        //Response.Redirect("SocietyProfile.aspx");
    }
}