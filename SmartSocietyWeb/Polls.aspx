<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Polls.aspx.cs" Inherits="Polls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .panel-body {
            padding: 5px;
        }

        .title-notice {
            font-weight: bolder;
            font-size: 25px;
        }

        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 0px;
            margin-left: 20px;
        }

        .pop-up {
            background-color: transparent !important;
            font-size: 12px;
            padding: 0px;
            color: blue !important;
            border: none;
        }

            .pop-up:hover, .pop-up:active {
                color: blue !important;
            }
    </style>
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Society Profile</li>
    </ul>
    <div class="row text-sm wrapper">
        <form runat="server">
            <div class="col-sm-6 m-b-xs">
                <a class="button" href="AddPoll.aspx">Add New Poll</a>
            </div>
            <div class="col-sm-3 m-b-xs">

                <asp:TextBox runat="server" CssClass="input-sm form-control" ID="txtEndDate" TextMode="Date"> </asp:TextBox>
            </div>
            <div class="col-sm-3">
                <div class="input-group">
                    <input class="input-sm form-control" placeholder="Search" type="text">
                    <span class="input-group-btn">
                        <button class="btn btn-sm btn-default" type="button">Go!</button>
                    </span>
                </div>
            </div>
        </form>
    </div>
    <section class="panel panel-default">

        <div class="panel-body">

            <div class="col-sm-6" style="display: flex; justify-content: center; margin-top: 30px; min-height: 460px;">
                <div class="user-poll-section" style="width: 80%">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>Question : </strong>Which is the best responsive framework to start web designing ...
                           <button class="btn btn-sm btn-info pop-up" data-toggle="popover" data-html="true" data-placement="top"
                               data-content="<div class='scrollable' style='height:40px'>Vivamus sagittis lacus vel augue laoreet rutrum faucibus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.</div>"
                               title="" data-original-title="<button type=&quot;button&quot; class=&quot;close pull-right&quot; data-dismiss=&quot;popover&quot;>×</button>Popover on top">
                               More
                           </button>

                        </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-sm-6">
                                    <p>End Date</p>
                                    <p>Poll Type</p>
                                </div>
                                <div class="col-sm-6">
                                    <p>Created on</p>
                                    <p>Total votes</p>

                                </div>
                            </div>


                            <hr>
                            Bootstrap (60%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                       <span class="sr-only">60% Complete (success)</span>
                                   </div>
                               </div>
                            Foundation (30%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                       <span class="sr-only">30% Complete (success)</span>
                                   </div>
                               </div>
                            Foundation (30%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                       <span class="sr-only">30% Complete (success)</span>
                                   </div>
                               </div>
                            Kube (10%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
                                       <span class="sr-only">10% Complete (success)</span>
                                   </div>
                               </div>

                        </div>
                        <div class="panel-footer text-center">
                            <a href="#" class="btn btn-success btn-sm"><i class="fa fa-pencil"></i> Update Poll</a>
                        </div>
                    </div>

                </div>
                <!-- POLL DIV END-->
            </div>

             <div class="col-sm-6" style="display: flex; justify-content: center; margin-top: 30px; min-height: 500px;">
                <div class="user-poll-section" style="width: 80%">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>Question : </strong>Which is the best responsive framework to start web designing ...
                           <button class="btn btn-sm btn-info pop-up" data-toggle="popover" data-html="true" data-placement="top"
                               data-content="<div class='scrollable' style='height:40px'>Vivamus sagittis lacus vel augue laoreet rutrum faucibus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.</div>"
                               title="" data-original-title="<button type=&quot;button&quot; class=&quot;close pull-right&quot; data-dismiss=&quot;popover&quot;>×</button>Popover on top">
                               More
                           </button>

                        </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-sm-6">
                                    <p>End Date</p>
                                    <p>Poll Type</p>
                                </div>
                                <div class="col-sm-6">
                                    <p>Created on</p>
                                    <p>Total votes</p>

                                </div>
                            </div>


                            <hr>
                            Bootstrap (60%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                       <span class="sr-only">60% Complete (success)</span>
                                   </div>
                               </div>
                           
                            Foundation (30%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                       <span class="sr-only">30% Complete (success)</span>
                                   </div>
                               </div>
                            Kube (10%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
                                       <span class="sr-only">10% Complete (success)</span>
                                   </div>
                               </div>

                        </div>
                        <div class="panel-footer text-center">
                            <a href="#" class="btn btn-success btn-sm"><i class="fa fa-pencil"></i> Update Poll</a>
                        </div>
                    </div>

                </div>
                <!-- POLL DIV END-->
            </div>

             <div class="col-sm-6" style="display: flex; justify-content: center; margin-top: 30px; min-height: 500px;">
                <div class="user-poll-section" style="width: 80%">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>Question : </strong>Which is the best responsive framework to start web designing ...
                           <button class="btn btn-sm btn-info pop-up" data-toggle="popover" data-html="true" data-placement="top"
                               data-content="<div class='scrollable' style='height:40px'>Vivamus sagittis lacus vel augue laoreet rutrum faucibus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.</div>"
                               title="" data-original-title="<button type=&quot;button&quot; class=&quot;close pull-right&quot; data-dismiss=&quot;popover&quot;>×</button>Popover on top">
                               More
                           </button>

                        </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-sm-6">
                                    <p>End Date</p>
                                    <p>Poll Type</p>
                                </div>
                                <div class="col-sm-6">
                                    <p>Created on</p>
                                    <p>Total votes</p>

                                </div>
                            </div>


                            <hr>
                            Bootstrap (60%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                       <span class="sr-only">60% Complete (success)</span>
                                   </div>
                               </div>
                            Foundation (30%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                       <span class="sr-only">30% Complete (success)</span>
                                   </div>
                               </div>
                            Foundation (30%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                       <span class="sr-only">30% Complete (success)</span>
                                   </div>
                               </div>
                            Kube (10%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
                                       <span class="sr-only">10% Complete (success)</span>
                                   </div>
                               </div>

                        </div>
                        <div class="panel-footer text-center">
                            <a href="#" class="btn btn-success btn-sm"><i class="fa fa-pencil"></i> Update Poll</a>
                        </div>
                    </div>

                </div>
                <!-- POLL DIV END-->
            </div>

             <div class="col-sm-6" style="display: flex; justify-content: center; margin-top: 30px; min-height: 500px;">
                <div class="user-poll-section" style="width: 80%">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>Question : </strong>Which is the best responsive framework to start web designing ...
                           <button class="btn btn-sm btn-info pop-up" data-toggle="popover" data-html="true" data-placement="top"
                               data-content="<div class='scrollable' style='height:40px'>Vivamus sagittis lacus vel augue laoreet rutrum faucibus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.</div>"
                               title="" data-original-title="<button type=&quot;button&quot; class=&quot;close pull-right&quot; data-dismiss=&quot;popover&quot;>×</button>Popover on top">
                               More
                           </button>

                        </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-sm-6">
                                    <p>End Date</p>
                                    <p>Poll Type</p>
                                </div>
                                <div class="col-sm-6">
                                    <p>Created on</p>
                                    <p>Total votes</p>

                                </div>
                            </div>


                            <hr>
                            Bootstrap (60%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                       <span class="sr-only">60% Complete (success)</span>
                                   </div>
                               </div>
                            Foundation (30%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                       <span class="sr-only">30% Complete (success)</span>
                                   </div>
                               </div>
                            Foundation (30%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                       <span class="sr-only">30% Complete (success)</span>
                                   </div>
                               </div>
                            Kube (10%) :
                               <div class="progress progress-striped active">
                                   <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
                                       <span class="sr-only">10% Complete (success)</span>
                                   </div>
                               </div>

                        </div>
                        <div class="panel-footer text-center">
                            <a href="#" class="btn btn-success btn-sm"><i class="fa fa-pencil"></i> Update Poll</a>
                        </div>
                    </div>

                </div>
                <!-- POLL DIV END-->
            </div>


        </div>
    </section>
</asp:Content>

