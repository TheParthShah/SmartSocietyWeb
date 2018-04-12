using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        optPaid.Checked = true;
    }

    protected void chkPaidUnpaid_CheckedChanged(object sender, EventArgs e)
    {
        Response.Redirect("ndfxbdjf");
    }

    protected void optPaid_CheckedChanged(object sender, EventArgs e)
    {
        Response.Redirect("ndfxbdjf");
    }
}