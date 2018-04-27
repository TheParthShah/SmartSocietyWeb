using System;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string pageUrl = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
        //Response.Write(pageUrl);
        if (Session["ResidentID"] == null || Session["ResidentID"].ToString() == "")
        {
            Response.Redirect("Login.aspx");
        }
        lblName.Text = Session["ResidentName"].ToString();
    }

    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}
