using Newtonsoft.Json.Linq;
using System;

public partial class AddStaff : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["StaffID"] != null)
            {
                EditBindData();
            }
        }
    }

    private void EditBindData()
    {
        var StaffData = JArray.Parse(ServiceObjectGen.GetAllStaffMembers(Convert.ToInt32(Request.QueryString["StaffID"])).ToString());
        txtStaffName.Text = StaffData[0]["MemberName"].ToString();
        txtaddress.Text = StaffData[0]["Address"].ToString();
        hdnDocFile.Value = StaffData[0]["IDProofDoc"].ToString();
        hdnImageFile.Value = StaffData[0]["Image"].ToString();
        txtContactNo1.Text = StaffData[0]["ContactNo1"].ToString();
        txtContactNo2.Text = StaffData[0]["ContactNo2"].ToString();
        txtDob.Text = Convert.ToDateTime(StaffData[0]["DOB"]).ToString("yyyy-MM-dd");
        txtDoj.Text = Convert.ToDateTime(StaffData[0]["DOJ"]).ToString("yyyy-MM-dd");
        ddMemberType.SelectedValue = StaffData[0]["MemberType"].ToString();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {

        var Image = "";
        var Doc = "";
        Boolean fileOKImg = false;
        Boolean fileOKDoc = false;
        String path = Server.MapPath("~/ServerImages/Staff/");
        if (fuimage.PostedFile.FileName != "")
        {
            String fileExtensionImg =
                System.IO.Path.GetExtension(fuimage.PostedFile.FileName).ToLower();
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
        if (fudocument.PostedFile.FileName != "")
        {
            String fileExtensionDoc =
                System.IO.Path.GetExtension(fuimage.PostedFile.FileName).ToLower();

            if (fileExtensionDoc == ".pdf")
            {
                fileOKDoc = true;
            }
        }
        if (fileOKDoc)
        {
            try
            {
                fudocument.PostedFile.SaveAs(path
                    + fudocument.PostedFile.FileName);
                Doc = fudocument.PostedFile.FileName.Replace(" ", "");
            }
            catch (Exception ex)
            {
                Doc = "0";
                Response.Write("<script>alert(\"Document File could not be uploaded\");</script>");
            }
        }
        else
        {
            if (!(fudocument.PostedFile.FileName == ""))
            {
                Response.Write("<script>alert(\"Cannot accept files of this type\");</script>");
            }
            Doc = "0";
        }
        if (fileOKImg)
        {
            try
            {
                fuimage.PostedFile.SaveAs(path
                    + fuimage.PostedFile.FileName);
                Image = fuimage.PostedFile.FileName.Replace(" ", "");
            }
            catch (Exception ex)
            {
                Image = "0";
                Response.Write("<script>alert(\"Image File could not be uploaded\");</script>");
            }
        }
        else
        {
            if (!(fuimage.PostedFile.FileName == ""))
            {
                Response.Write("<script>alert(\"Cannot accept files of this type\");</script>");
            }
            Image = "0";
        }
        if (hdnImageFile.Value == "" && hdnDocFile.Value == "")
        {
            if (Image == "0" && Doc == "0")
            {
                ServiceObjectAdmin.AddStaffMember(txtStaffName.Text, ddMemberType.SelectedValue, txtDob.Text, txtContactNo1.Text, txtContactNo2.Text, "", "", txtaddress.Text, txtDoj.Text, "", 1).ToString();
                Response.Redirect("Staff.aspx");
            }
            else if (Image != "0" && Doc == "0")
            {
                ServiceObjectAdmin.AddStaffMember(txtStaffName.Text, ddMemberType.SelectedValue, txtDob.Text, txtContactNo1.Text, txtContactNo2.Text, Image, "", txtaddress.Text, txtDoj.Text, "", 1).ToString();
                Response.Redirect("Staff.aspx");
            }
            else if (Image == "0" && Doc != "0")
            {
                ServiceObjectAdmin.AddStaffMember(txtStaffName.Text, ddMemberType.SelectedValue, txtDob.Text, txtContactNo1.Text, txtContactNo2.Text, "", Doc, txtaddress.Text, txtDoj.Text, "", 1).ToString();
                Response.Redirect("Staff.aspx");
            }
            else
            {
                ServiceObjectAdmin.AddStaffMember(txtStaffName.Text, ddMemberType.SelectedValue, txtDob.Text, txtContactNo1.Text, txtContactNo2.Text, Image, Doc, txtaddress.Text, txtDoj.Text, "", 1).ToString();
                Response.Redirect("Staff.aspx");
            }
        }
        else
        {
            if (Image == "0" && Doc == "0")
            {
                ServiceObjectAdmin.EditStaffMember(Convert.ToInt32(Request.QueryString["StaffID"]), txtStaffName.Text, ddMemberType.SelectedValue, Convert.ToDateTime(txtDob.Text).ToShortDateString(), txtContactNo1.Text, txtContactNo2.Text, hdnImageFile.Value, hdnDocFile.Value, txtaddress.Text, Convert.ToDateTime(txtDoj.Text).ToShortDateString(), null, 1, true).ToString();
                Response.Redirect("Staff.aspx");
            }
            else if (Image != "0" && Doc == "0")
            {
                ServiceObjectAdmin.EditStaffMember(Convert.ToInt32(Request.QueryString["StaffID"]), txtStaffName.Text, ddMemberType.SelectedValue, Convert.ToDateTime(txtDob.Text).ToShortDateString(), txtContactNo1.Text, txtContactNo2.Text, Image, hdnDocFile.Value, txtaddress.Text, Convert.ToDateTime(txtDoj.Text).ToShortDateString(), null, 1, true).ToString();
                Response.Redirect("Staff.aspx");
            }
            else if (Image == "0" && Doc != "0")
            {
                ServiceObjectAdmin.EditStaffMember(Convert.ToInt32(Request.QueryString["StaffID"]), txtStaffName.Text, ddMemberType.SelectedValue, Convert.ToDateTime(txtDob.Text).ToShortDateString(), txtContactNo1.Text, txtContactNo2.Text, hdnImageFile.Value, Doc, txtaddress.Text, Convert.ToDateTime(txtDoj.Text).ToShortDateString(), null, 1, true).ToString();
                Response.Redirect("Staff.aspx");
            }
            else
            {
                ServiceObjectAdmin.EditStaffMember(Convert.ToInt32(Request.QueryString["StaffID"]), txtStaffName.Text, ddMemberType.SelectedValue, Convert.ToDateTime(txtDob.Text).ToShortDateString(), txtContactNo1.Text, txtContactNo2.Text, Image, Doc, txtaddress.Text, Convert.ToDateTime(txtDoj.Text).ToShortDateString(), null, 1, true).ToString();
                Response.Redirect("Staff.aspx");
            }
        }
    }

    protected void btnCancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddStaff.aspx");
    }
}