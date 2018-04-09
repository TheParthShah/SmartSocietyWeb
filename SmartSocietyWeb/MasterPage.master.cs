using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string pageUrl = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
        //Response.Write(pageUrl);
        //if(Session["ResidentID"]==null || Session["ResidentID"].ToString() == "")
        //{
        //    Response.Redirect("Login.aspx");
        //}
        
    }

    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}
