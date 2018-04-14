<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FlatDetails.aspx.cs" Inherits="FlatDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .flatcard {
            color: black;
            font-size: 14px;
            line-height: 1.1;
            font-weight: 500;
            min-height: 110px;
            /*border: 1px solid black;*/
        }
    </style>
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Flat Details</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Flat Details</h1>
            </div>
        </header>

        <div class="panel-body">
            <div class="row">
                <asp:Repeater runat="server" ID="rptFlatDetails">
                    <ItemTemplate>
                        <a href='MemberDetails.aspx?FlatNo=<%# Eval("FlatNo") %>'>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                <section class="panel panel-default">
                                    <header class="panel-body lt flatcard">
                                        <div class="clearfix">
                                            <span class="pull-left thumb avatar b-3x m-r">
                                            <img src="images/avatar.jpg" class="img-circle border">
                                                </span>
                                            <div class="clear">
                                                <div class=" m-t-xs m-b-xs"><%# Eval("ResidentName") %></div>
                                                <div class=" m-t-xs m-b-xs font-small">Flat ID: <%# Eval("FlatNo") %> </div>
                                                <small class="text-muted">Resident Type: <%# Convert.ToBoolean(Eval("OnRent"))?"On Rent <br> Rentee Name: " + Eval("RenteeName").ToString() : "Owner"%></small>
                                            </div>
                                        </div>
                                    </header>
                                </section>
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
</asp:Content>

