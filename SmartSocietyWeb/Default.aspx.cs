using Newtonsoft.Json.Linq;
using System;

public partial class _Default : System.Web.UI.Page
{
    SSAPIGen.GeneralClient ServiceObjectGen = new SSAPIGen.GeneralClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        var AllAutoStates = JObject.Parse(ServiceObjectGen.GetAllAutoStates().ToString());
        divTankLevel.Attributes.Add("class", "p" + AllAutoStates["TankLevel"] + " c100 green");
        lblTankLevel.Text = AllAutoStates["TankLevel"].ToString();

        chkFloor1.Checked = Convert.ToBoolean(AllAutoStates["Floor1"]);
        chkFloor2.Checked = Convert.ToBoolean(AllAutoStates["Floor2"]);
        chkFloor3.Checked = Convert.ToBoolean(AllAutoStates["Floor3"]);
        chkFloor4.Checked = Convert.ToBoolean(AllAutoStates["Floor4"]);
        chkAutoSens.Checked = Convert.ToBoolean(AllAutoStates["Sensor"]);

        if (chkAutoSens.Checked)
        {
            chkCampusLights.Enabled = false;
        }
        else
        {
            chkCampusLights.Checked = Convert.ToBoolean(AllAutoStates["StreetLight1"]);
            chkCampusLights.Enabled = true;
        }
    }


    protected void chkFloor1_CheckedChanged(object sender, EventArgs e)
    {
        bool F1ES = chkFloor1.Checked;
        bool F1 = false;
        bool F2 = false;
        bool F3 = false;
        bool F4 = false;
        if (chkFloor1.Checked == true)
            F1 = true;
        if (chkFloor2.Checked == true)
            F2 = true;
        if (chkFloor3.Checked == true)
            F3 = true;
        if (chkFloor4.Checked == true)
            F4 = true;
        if (ServiceObjectGen.SetFloorLights(F1, F2, F3, F4).ToString() != "True")
        {
            chkFloor1.Checked = !F1ES;
        }
    }

    protected void chkFloor2_CheckedChanged(object sender, EventArgs e)
    {
        bool F2ES = chkFloor2.Checked;
        bool F1 = false;
        bool F2 = false;
        bool F3 = false;
        bool F4 = false;
        if (chkFloor1.Checked == true)
            F1 = true;
        if (chkFloor2.Checked == true)
            F2 = true;
        if (chkFloor3.Checked == true)
            F3 = true;
        if (chkFloor4.Checked == true)
            F4 = true;
        if (ServiceObjectGen.SetFloorLights(F1, F2, F3, F4).ToString() != "True")
        {
            chkFloor2.Checked = !F2ES;
        }
    }

    protected void chkFloor3_CheckedChanged(object sender, EventArgs e)
    {
        bool F3ES = chkFloor3.Checked;
        bool F1 = false;
        bool F2 = false;
        bool F3 = false;
        bool F4 = false;
        if (chkFloor1.Checked == true)
            F1 = true;
        if (chkFloor2.Checked == true)
            F2 = true;
        if (chkFloor3.Checked == true)
            F3 = true;
        if (chkFloor4.Checked == true)
            F4 = true;
        if (ServiceObjectGen.SetFloorLights(F1, F2, F3, F4).ToString() != "True")
        {
            chkFloor3.Checked = !F3ES;
        }
    }

    protected void chkFloor4_CheckedChanged(object sender, EventArgs e)
    {
        bool F4ES = chkFloor4.Checked;
        bool F1 = false;
        bool F2 = false;
        bool F3 = false;
        bool F4 = false;
        if (chkFloor1.Checked == true)
            F1 = true;
        if (chkFloor2.Checked == true)
            F2 = true;
        if (chkFloor3.Checked == true)
            F3 = true;
        if (chkFloor4.Checked == true)
            F4 = true;
        if (ServiceObjectGen.SetFloorLights(F1, F2, F3, F4).ToString() != "True")
        {
            chkFloor4.Checked = !F4ES;
        }
    }

    protected void chkAutoSens_CheckedChanged(object sender, EventArgs e)
    {
        if (ServiceObjectGen.SetSensor(chkAutoSens.Checked).ToString() != "True")
        {
            chkAutoSens.Checked = !chkAutoSens.Checked;
        }
    }

    protected void chkCampusLights_CheckedChanged(object sender, EventArgs e)
    {
        if (ServiceObjectGen.SetStreetLight(chkCampusLights.Checked).ToString() != "True")
        {
            chkCampusLights.Checked = !chkCampusLights.Checked;
        }
    }
}