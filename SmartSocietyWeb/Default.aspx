<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="stylesheet" href="css/circle.css" />

    <style>
        .switch input {
            display: none;
        }

        .switch {
            display: inline-block;
            width: 60px;
            height: 30px;
            margin: 8px;
            transform: translateY(50%);
            position: relative;
        }

        .slider {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            border-radius: 30px;
            box-shadow: 0 0 0 2px #777, 0 0 4px #777;
            cursor: pointer;
            border: 4px solid transparent;
            overflow: hidden;
            transition: .4s;
        }

            .slider:before {
                position: absolute;
                content: "";
                width: 100%;
                height: 100%;
                background: #777;
                border-radius: 30px;
                transform: translateX(-30px);
                transition: .4s;
            }

        input:checked + .slider:before {
            transform: translateX(30px);
            background: limeGreen;
        }

        input:checked + .slider {
            box-shadow: 0 0 0 2px limeGreen,0 0 2px limeGreen;
        }
    </style>
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a class="active"><i class="fa fa-home"></i>Home</a></li>
    </ul>

    <form runat="server">
        <section class="panel panel-default">
            <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>--%>
                    <div class="panel-body">
                        <section class="panel panel-default">
                            <div class="row m-l-none m-r-none bg-light lter">
                                <div class="col-sm-6 col-md-3 padder-v b-r b-light">
                                    <span class="fa-stack fa-2x pull-left m-r-sm"><i class="fa fa-circle fa-stack-2x text-info"></i><i class="fa fa-user fa-stack-1x text-white"></i></span><a class="clear" href="#"><span class="h3 block m-t-xs"><strong>52,000</strong></span>
                                        <small class="text-muted text-uc">Members</small>
                                    </a>
                                </div>
                                <div class="col-sm-6 col-md-3 padder-v b-r b-light lt">
                                    <span class="fa-stack fa-2x pull-left m-r-sm"><i class="fa fa-circle fa-stack-2x text-warning"></i><i class="fa fa-male fa-stack-1x text-white"></i><span class="easypiechart pos-abt easyPieChart" data-percent="100" data-line-width="4" data-track-color="#fff" data-scale-color="false" data-size="50" data-line-cap="butt" data-animate="2000" data-target="#bugs" data-update="3000" style="width: 50px; height: 50px; line-height: 50px;">
                                        <canvas width="50" height="50"></canvas>
                                    </span></span>
                                    <a class="clear" href="#"><span class="h3 block m-t-xs"><strong id="bugs">771</strong></span>
                                        <small class="text-muted text-uc">Staff</small>
                                    </a>
                                </div>
                                <div class="col-sm-6 col-md-3 padder-v b-r b-light">
                                    <span class="fa-stack fa-2x pull-left m-r-sm"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-file fa-stack-1x text-white"></i><span class="easypiechart pos-abt easyPieChart" data-percent="100" data-line-width="4" data-track-color="#f5f5f5" data-scale-color="false" data-size="50" data-line-cap="butt" data-animate="3000" data-target="#firers" data-update="5000" style="width: 50px; height: 50px; line-height: 50px;">
                                        <canvas width="50" height="50"></canvas>
                                    </span></span><a class="clear" href="#"><span class="h3 block m-t-xs"><strong id="firers">559</strong></span>
                                        <small class="text-muted text-uc">Complains</small>
                                    </a>
                                </div>
                                <div class="col-sm-6 col-md-3 padder-v b-r b-light lt">
                                    <span class="fa-stack fa-2x pull-left m-r-sm"><i class="fa fa-circle fa-stack-2x icon-muted"></i><i class="fa fa-car fa-stack-1x text-white"></i></span><a class="clear" href="#"><span class="h3 block m-t-xs"><strong>31:50</strong></span>
                                        <small class="text-muted text-uc">Visitors</small>
                                    </a>
                                </div>
                            </div>
                        </section>

                        <div class="row">
                            <div class="col-sm-8">
                                <h3>Floor Lights</h3>

                                <div class="col-sm-3">
                                    <div style="margin-left: 20px;">
                                        <label class="switch">
                                            <asp:CheckBox runat="server" ID="chkFloor1" AutoPostBack="true" OnCheckedChanged="chkFloor1_CheckedChanged"></asp:CheckBox>
                                            <span class="slider"></span>
                                        </label>
                                        Floor 1   
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div style="margin-left: 20px;">
                                        <label class="switch">
                                            <asp:CheckBox runat="server" ID="chkFloor2" AutoPostBack="true" OnCheckedChanged="chkFloor2_CheckedChanged"></asp:CheckBox>
                                            <span class="slider"></span>
                                        </label>
                                        Floor 2   
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div style="margin-left: 20px;">
                                        <label class="switch">
                                            <asp:CheckBox runat="server" ID="chkFloor3" AutoPostBack="true" OnCheckedChanged="chkFloor3_CheckedChanged"></asp:CheckBox>
                                            <span class="slider"></span>
                                        </label>
                                        Floor 3
   
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div style="margin-left: 20px;">
                                        <label class="switch">
                                            <asp:CheckBox runat="server" ID="chkFloor4" AutoPostBack="true" OnCheckedChanged="chkFloor4_CheckedChanged"></asp:CheckBox>
                                            <span class="slider"></span>
                                        </label>
                                        Floor 4   
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row" style="margin-top: 50px;">

                            <div class="col-sm-4">

                                <div class="col-sm-6">
                                    <h3>Auto Sensing</h3>
                                    <div style="margin-left: 20px;">
                                        <label class="switch">
                                            <asp:CheckBox runat="server" ID="chkAutoSens" AutoPostBack="true" OnCheckedChanged="chkAutoSens_CheckedChanged"
                                                ></asp:CheckBox>
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <h3>Campus Light</h3>
                                    <div style="margin-left: 20px;">
                                        <label class="switch">
                                            <asp:CheckBox runat="server" ID="chkCampusLights" AutoPostBack="true" OnCheckedChanged="chkCampusLights_CheckedChanged"></asp:CheckBox>
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row" style="margin-top: 50px;">
                            <div class="col-sm-2">
                                <h3>Tank Level</h3>
                                <div runat="server" id="divTankLevel" style="margin-top: 20px;">
                                    <span><asp:Label runat="server" ID="lblTankLevel"></asp:Label></span>
                                    <div class="slice">
                                        <div class="bar"></div>
                                        <div class="fill"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                <%--</ContentTemplate>
            </asp:UpdatePanel>--%>
        </section>
    </form>
</asp:Content>

