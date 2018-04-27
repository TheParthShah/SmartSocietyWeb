using System;

public partial class AddDocument : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        var Doc = "";
        Boolean fileOK = false;
        String path = Server.MapPath("~/Docs/");
        if (flUpDoc.PostedFile.FileName != "")
        {
            String fileExtension =
                System.IO.Path.GetExtension(flUpDoc.PostedFile.FileName).ToLower();
            String[] allowedExtensions =
                { ".pdf", ".xls", ".xlsx"};
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
                flUpDoc.PostedFile.SaveAs(path
                    + flUpDoc.PostedFile.FileName);
                Doc = flUpDoc.PostedFile.FileName;
            }
            catch (Exception ex)
            {
                Doc = "0";
                Response.Write("<script>alert(\"File could not be uploaded\");</script>");
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
        if (Doc != "0")
        {
            ServiceObjectGen.AddDocument(ddFileType.SelectedValue,Doc,txtDocName.Text);
            Response.Redirect("SocietyProfile.aspx");
        }
    }
}