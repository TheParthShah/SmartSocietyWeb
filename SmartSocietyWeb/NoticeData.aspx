<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NoticeData.aspx.cs" Inherits="NoticeData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
         .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
           
        }
        .panel-body {
            padding: 5px;
        }

        .title-notice {
            font-weight: bolder;
            font-size: 25px;
        }
    </style>
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Society Profile</li>
    </ul>
    <form runat="server">
        <div class="row text-sm wrapper">
            <div class="col-sm-9 row m-b-xs">
                    <div class="col-sm-3">
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtStartDate" required="required" TextMode="Date"> </asp:TextBox>
                    </div>
                    <div class="col-sm-1 text-center" style="padding: 7px 0px;">to </div>
                    <div class="col-sm-3">
                        <asp:TextBox runat="server" CssClass="form-control col-sm-5" ID="txtEndDate" required="required" TextMode="Date"> </asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:Button runat="server" ID="btnApply" CssClass="btn btn-sm col-sm-3 btn-default" Text="Apply" OnClick="btnApply_Click"></asp:Button>
                    </div>
                </div>
            <div class="col-sm-3">
                <a href="NoticeData.aspx" class="button">View All</a>
                <%--<div class="input-group">
                    <asp:TextBox runat="server" ID="txtSearchFlat" class="input-sm form-control" placeholder="Search" type="text" required="required" />

                    <span class="input-group-btn">
                        <asp:Button ID="btnSearch" runat="server" class="btn btn-sm btn-default" Text="Go!" OnClick="btnSearch_Click"></asp:Button>
                    </span>
                </div>--%>
            </div>
        </div>
        <section class="panel panel-default">

            <div class="panel-body">
                <section class="scrollable wrapper">
                    <div class="timeline">
                        <article class="timeline-item active">
                            <div class="timeline-caption">
                                <div class="panel bg-primary lter no-borders">
                                    <div class="panel-body">
                                        <h3 class="title-notice">Notices</h3>
                                    </div>
                                </div>
                            </div>
                        </article>
                        <asp:Repeater runat="server" ID="rptNotice" OnItemDataBound="Unnamed_ItemDataBound">
                            <ItemTemplate>
                                <article class="timeline-item">
                                    <div class="timeline-caption">
                                        <div class="panel panel-default">
                                            <div class="panel-body">
                                                <span class="arrow left"></span><span class="timeline-icon"><i class="fa fa-bullhorn time-icon bg-danger"></i></span><span class="timeline-date"><%# Convert.ToDateTime( Eval("CreatedOn")).ToLongDateString() %></span>
                                                <h5><span><%# Eval("Title") %></span> <%# Eval("title") %> </h5>
                                                <p><%# Eval("Description") %></p>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <article class="timeline-item alt">
                                    <div class="timeline-caption">
                                        <div class="panel panel-default">
                                            <div class="panel-body">
                                                <span class="arrow right"></span><span class="timeline-icon"><i class="fa fa-bullhorn time-icon bg-primary"></i></span><span class="timeline-date"><%# Convert.ToDateTime( Eval("CreatedOn")).ToLongDateString() %></span>
                                                
                                                <p><%# Eval("Description") %></p>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </AlternatingItemTemplate>
                            <FooterTemplate>
                                <div class="timeline-footer"><a href="AddNotice.aspx"><i class="fa fa-plus time-icon inline-block bg-dark"></i></a></div>
                            </FooterTemplate>
                        </asp:Repeater>

                    </div>
                </section>
            </div>
        </section>
    </form>
</asp:Content>

