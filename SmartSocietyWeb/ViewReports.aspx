<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewReports.aspx.cs" Inherits="ViewReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="stylesheet" href="js/datatables/datatables.css" />
    <link rel="stylesheet" href="js/nestable/nestable.css" type="text/css" cache="false">
    <style>
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 15px;
            margin-left: 20px;
        }

        .pop-up {
            background-color: white !important;
            font-size: 12px;
            padding: 0px;
            color: blue !important;
            border: none;
        }

            .pop-up:hover {
                color: blue !important;
            }

        .hign-priority {
            background-color: #65bd77;
            color: white;
            font-weight: 900;
        }

        .low-priority {
            background-color: #4cc0c1;
            color: white;
            font-weight: 900;
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
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Report From - to -</h1>
            </div>
        </header>

        <div class="panel-body">
            <div class="row table-bordered">


                <div class="col-sm-6">
                    <h2><strong>Income</strong></h2>
                    <div class="col-sm-8">
                        Income Name
                    </div>


                    <div class="col-sm-2">
                        Amount
                    </div>
                    <div class="col-sm-2">
                        Amount
                    </div>

                    <div class="col-sm-2 col-sm-offset-8">Total</div>
                    <div class="col-sm-2">Total</div>
                </div>
                <div class="col-sm-6">
                    <h2><strong>Expense</strong></h2>
                    <div class="col-sm-8">
                        Expense Name
                    </div>


                    <div class="col-sm-2">
                        Amount
                    </div>
                    <div class="col-sm-2">
                        Amount
                    </div>
                    <div class="col-sm-2 col-sm-offset-8">Total</div>
                    <div class="col-sm-2">Total</div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

