using Newtonsoft.Json.Linq;
using System;

public partial class AddPoll : System.Web.UI.Page
{
    SSAPIAdmin.AdminClient ServiceObjectAdmin = new SSAPIAdmin.AdminClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        int PollID = Convert.ToInt32(ServiceObjectAdmin.AddPoll(txtPolltitle.Text, 0, 1, DateTime.Now.AddDays(2).ToString()));
        string[] Options = { txtOption1.Text, txtOption2.Text, txtOption3.Text, txtOption4.Text };
        ServiceObjectAdmin.AddPollOptions(Options, PollID);
        Response.Redirect("Polls.aspx");
    }
}