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
        <%-- <header class="panel-heading font-bold">
            <div class="row">
                <div class="col-sm-1 text-center">
                    <img class="img-responsive img-circle" style="border: 1px solid;" width="100" height="100" src="images/icon.png" style="margin-bottom: 5px;">
                    <!-- <a href="">Edit Logo</a> -->
                </div>
                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-11" style="font-size: 34pt; margin-top: 5px;">Avishkar Apartments</h1>
            </div>
        </header>--%>

        <div class="row text-sm wrapper">
            <form runat="server">
                <div class="col-sm-9 row m-b-xs">
                    <div class="col-sm-3">
                        <asp:TextBox runat="server" CssClass="form-control" ID="StartDate" TextMode="Date"> </asp:TextBox> 
                    </div>
                    <div class="col-sm-1 text-center" style="padding: 7px 0px;"> to </div>
                    <div class="col-sm-3">
                        <asp:TextBox runat="server" CssClass="form-control col-sm-5" ID="EndDate" TextMode="Date"> </asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <button class="btn btn-sm col-sm-3 btn-default">Apply</button>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="input-group">
                        <input class="input-sm form-control" placeholder="Search" list="Flatno" type="text">
                        <datalist id="Flatno">
                            <option value="1"></option>
                            <option value="2"></option>
                            <option value="3"></option>
                        </datalist>
                        <span class="input-group-btn">
                            <button class="btn btn-sm btn-default" type="button">Go!</button>
                        </span>
                    </div>
                </div>
            </form>
        </div>
        <div class="panel-body">

            <div class="row row-striped">
                <div class="col-sm-2 col-xs-4 text-right">
                    <h1 class="display-4"><span class="badge badge-secondary date-badge">23</span></h1>
                    <h2 class="no-margin">OCT</h2>
                </div>
                <div class="col-sm-10 col-xs-8">
                    <h3 class="text-uppercase"><strong>Name of Visitor</strong></h3>
                    <ul class="list-inline">
                        <li class="list-inline-item"><i class="fa fa-calendar-o" aria-hidden="true"></i>Monday</li>
                        <li class="list-inline-item"><i class="fa fa-clock-o" aria-hidden="true"></i>12:30 PM - 2:00 PM</li>
                        <li class="list-inline-item"><i class="fa fa-location-arrow" aria-hidden="true"></i>Flat No</li>
                        <li class="list-inline-item"><i class="fa fa-cab" aria-hidden="true"></i>vehicle No</li>
                        <li class="list-inline-item"><i class="fa fa-mobile" aria-hidden="true"></i>Mobile No</li>
                    </ul>
                    <p>Work</p>
                </div>
            </div>

            <div class="row row-striped">
                <div class="col-sm-2 col-xs-4 text-right">
                    <h1 class="display-4"><span class="badge badge-secondary date-badge">23</span></h1>
                    <h2 class="no-margin">OCT</h2>
                </div>
                <div class="col-sm-10 col-xs-8">
                    <h3 class="text-uppercase"><strong>Ice Cream Social</strong></h3>
                    <ul class="list-inline">
                        <li class="list-inline-item"><i class="fa fa-calendar-o" aria-hidden="true"></i>Monday</li>
                        <li class="list-inline-item"><i class="fa fa-clock-o" aria-hidden="true"></i>12:30 PM - 2:00 PM</li>
                        <li class="list-inline-item"><i class="fa fa-location-arrow" aria-hidden="true"></i>Cafe</li>
                    </ul>
                    <p>Lorem ipsum dolsit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                </div>
            </div>
        </div>

    </section>
</asp:Content>

