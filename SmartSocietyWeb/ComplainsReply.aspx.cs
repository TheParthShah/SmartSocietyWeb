using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ComplainsReply : System.Web.UI.Page
{

    SSAPIAdmin.AdminClient ServiceObject = new SSAPIAdmin.AdminClient();
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["ComplaintID"] != null)
            {
                id = Convert.ToInt32( Request.QueryString["ComplaintID"]);
            }
        }

        
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if ((bool)ServiceObject.SendComplaintResponse(id, txtResponse.Text, 1))
        {
            Response.Write("csvs");
        }
    }
}