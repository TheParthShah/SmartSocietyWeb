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
        <li><a href="Default.aspx"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Polls</li>
    </ul>
    <form runat="server">
        <div class="row text-sm wrapper">

            <div class="col-sm-6 m-b-xs">
                <a class="button" href="AddPoll.aspx">Add New Poll</a>
            </div>
            <%--<div class="col-sm-3 m-b-xs">

                <asp:TextBox runat="server" CssClass="input-sm form-control" ID="txtEndDate" TextMode="Date"> </asp:TextBox>
            </div>
            <div class="col-sm-3">
                <div class="input-group">
                    <input class="input-sm form-control" placeholder="Search" type="text">
                    <span class="input-group-btn">
                        <button class="btn btn-sm btn-default" type="button">Go!</button>
                    </span>
                </div>
            </div>--%>
        </div>

        <section class="panel panel-default">

            <div class="panel-body">
                <asp:Repeater runat="server" ID="rptPolls">
                    <ItemTemplate>
                        <div class="col-sm-6" style="display: flex; justify-content: center; margin-top: 30px; min-height: 460px;">
                            <div class="user-poll-section" style="width: 80%">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <asp:HiddenField runat="server" ID="hdnPollID" Value='<%# Eval("PollID") %>' />
                                        <strong>Question : </strong><%# Eval("PollTitle") %>
                                    </div>
                                    <div class="panel-body">

                                        <div class="row">
                                            <div class="col-sm-6">
                                                <p><%# Eval("EndTime") %></p>
                                                <p><%# (Eval("PollType").ToString() == "0") ? "Public" : "PanelMembers" %></p>
                                            </div>
                                            <div class="col-sm-6">
                                                <p><%#Eval("CreatedOn") %></p>
                                                <p>Total votes</p>
                                            </div>
                                        </div>
                                        <hr>
                                        <asp:Repeater runat="server" ID="rptOptions">
                                            <ItemTemplate>
                                                <%# Eval("OptionName") %>
                                                <asp:HiddenField runat="server" ID="hdnOptionWidth" Value='<%# ((Convert.ToInt32(Eval("VoteCount"))*100)/16)+"%" %>' />
                                                <div class="progress progress-striped active">
                                                    <div class="progress-bar progress-bar-success" runat="server" id="divProgBar" role="progressbar" aria-valuenow='<%# Eval("VoteCount") %>' aria-valuemin="0" aria-valuemax="16" style='width: 60%;'>
                                                        <%--<%# ((Convert.ToInt32(Eval("VoteCount"))*100)/16)+"%" %>--%>
                                                        <span class="sr-only"><%# Eval("VoteCount") %></span>
                                                        <%# Eval("VoteCount") %>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                            <AlternatingItemTemplate>
                                                <%# Eval("OptionName") %>
                                                <asp:HiddenField runat="server" ID="hdnOptionWidth" Value='<%# ((Convert.ToInt32(Eval("VoteCount"))*100)/16)+"%" %>' />
                                                <div class="progress progress-striped active">
                                                    <div class="progress-bar progress-bar-info" runat="server" id="divProgBar" role="progressbar" aria-valuenow='<%# Eval("VoteCount") %>' aria-valuemin="0" aria-valuemax="16" style='width: 60%;'>
                                                        <%--<%# ((Convert.ToInt32(Eval("VoteCount"))*100)/16)+"%" %>--%>
                                                        <span class="sr-only"><%# Eval("VoteCount") %></span>
                                                        <%# Eval("VoteCount") %>
                                                    </div>
                                                </div>
                                            </AlternatingItemTemplate>
                                        </asp:Repeater>
                                        <%--                                    Foundation (30%) :
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
                               </div>--%>
                                    </div>
                                   <%-- <div class="panel-footer text-center">

                                        <a href="#" class="btn btn-success btn-sm"><i class="fa fa-pencil"></i>Update Poll</a>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>

    </form>
</asp:Content>

