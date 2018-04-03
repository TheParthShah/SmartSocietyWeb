<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FlatDetails.aspx.cs" Inherits="FlatDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .flatcard {
            color: black;
            //border: 1px solid black;
        }
    </style>
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Flat Details</li>
    </ul>


    <section class="panel panel-default">
        <%--<header class="panel-heading font-bold">
            <div class="row">
                <div class="col-sm-1 text-center">
                    <img class="img-responsive img-circle" style="border: 1px solid;" width="100" height="100" src="images/icon.png" style="margin-bottom: 5px;">
                    <!-- <a href="">Edit Logo</a> -->
                </div>
                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-11" style="font-size: 34pt; margin-top: 5px;">Flat Details</h1>
            </div>
        </header>--%>

        <div class="panel-body">
            <div class="row">
                <asp:Repeater runat="server" ID="rptFlatDetails">
                    <ItemTemplate>
                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                            <section class="panel panel-default">
                                <header class="panel-body lt flatcard">
                                    <div class="clearfix">
                                        <a href="#" class="pull-left thumb avatar b-3x m-r">
                                            <img src="images/avatar.jpg" class="img-circle border">
                                        </a>
                                        <div class="clear">
                                            <div class="h3 m-t-xs m-b-xs">Flat ID <%# Eval("FlatNo") %></div>
                                            <div class="h3 m-t-xs m-b-xs">Flat Holder Name </div>
                                            <small class="text-muted">Email ID</small>
                                        </div>
                                    </div>
                                </header>
                            </section>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>


            </div>



        </div>
    </section>
</asp:Content>

