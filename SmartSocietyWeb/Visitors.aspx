<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Visitors.aspx.cs" Inherits="Visitors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .row-striped:nth-of-type(odd) {
            background-color: #efefef;
            border-left: 4px #000000 solid;
        }

        .row-striped:nth-of-type(even) {
            background-color: #ffffff;
            border-left: 4px #efefef solid;
        }

        .date-badge {
            font-size: 35px;
            background-color: #6c757d;
            padding: 7px 9px;
        }

        .no-margin {
            margin-top: -5px;
            font-size: 30px;
        }

        li i {
            padding-right: 5px;
        }
    </style>
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Society Profile</li>
    </ul>

    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Visitor Details</h1>
            </div>
        </header>

        <div class="row text-sm wrapper" style="margin-bottom: -15px;">
            <form runat="server">
                <div class="col-sm-9 row m-b-xs">
                    <div class="col-sm-3">
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtStartDate" TextMode="Date"> </asp:TextBox>
                    </div>
                    <div class="col-sm-1 text-center" style="padding: 7px 0px;">to </div>
                    <div class="col-sm-3">
                        <asp:TextBox runat="server" CssClass="form-control col-sm-5" ID="txtEndDate" TextMode="Date"> </asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:Button runat="server" ID="btnApply" CssClass="btn btn-sm col-sm-3 btn-default" Text="Apply" OnClick="btnApply_Click"></asp:Button>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="input-group">
                        <asp:TextBox runat="server" ID="txtSearch" CssClass="input-sm form-control" placeholder="Search" list="Flatno"></asp:TextBox>
                        <datalist id="Flatno">
                            <option value="1"></option>
                            <option value="2"></option>
                            <option value="3"></option>
                        </datalist>
                        <span class="input-group-btn">
                            <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-sm btn-default" Text="Go!" OnClick="btnSearch_Click"></asp:Button>
                        </span>
                    </div>
                </div>
            </form>
        </div>
        <div class="panel-body">
            <asp:Repeater runat="server" ID="rptVisitorsData">
                <ItemTemplate>
                    <div class="row row-striped">
                        <div class="col-sm-2 col-xs-4 text-right">
                            <h1 class="display-4"><span class="badge badge-secondary date-badge"><%# Convert.ToDateTime(Eval("InTime")).Day %></span></h1>
                            <h2 class="no-margin"><%# MonthNumtoString(Convert.ToDateTime(Eval("InTime")).Month) %></h2>
                        </div>
                        <div class="col-sm-10 col-xs-8">
                            <h3 class="text-uppercase"><strong><%# Eval("VisitorName") %></strong></h3>
                            <ul class="list-inline">
                                <li class="list-inline-item"><i class="fa fa-calendar-o" aria-hidden="true"></i><%# Convert.ToDateTime(Eval("InTime")).DayOfWeek %></li>
                                <li class="list-inline-item"><i class="fa fa-clock-o" aria-hidden="true"></i><%# Convert.ToDateTime(Eval("InTime")).ToShortDateString() + " " +  Convert.ToDateTime(Eval("InTime")).ToShortTimeString() %> - <%# (Eval("OutTime").ToString()!="") ? Convert.ToDateTime(Eval("OutTime")).ToShortDateString() +" "+ Convert.ToDateTime(Eval("OutTime")).ToShortTimeString() : "<span class=\"text-warning\">Not Checked out yet</span>" %></li>
                                <li class="list-inline-item"><i class="fa fa-location-arrow" aria-hidden="true"></i><%# Eval("FlatNo") %></li>
                                <li class="list-inline-item"><i class="fa fa-cab" aria-hidden="true"></i><%# Eval("VehicleNumber") %></li>
                                <li class="list-inline-item"><i class="fa fa-mobile" aria-hidden="true"></i><%# Eval("MobileNo") %></li>
                            </ul>
                            <p><%# Eval("Purpose") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

    </section>
</asp:Content>

