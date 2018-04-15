<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link rel="stylesheet" href="js/datatables/datatables.css" />
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
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Events Details</h1>
            </div>
        </header>
        <form runat="server">


            <div class="panel-body">
                <asp:PlaceHolder ID="panelGridView" runat="server">
                    <section class="panel panel-default">
                        <header class="panel-heading">DataTables <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data." data-original-title="" title=""></i></header>
                        <div class="row text-sm wrapper">
                                    <div class="col-sm-9 row m-b-xs">
                                        <div class="col-sm-4">
                                            <a class="btn btn-success" href="AddEvent.aspx">Add New Event</a>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="input-group">
                                            <asp:TextBox runat="server" ID="txtSearch" CssClass="input-sm form-control" placeholder="Search" required="required"></asp:TextBox>
                                            <span class="input-group-btn">
                                                <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-sm btn-default" Text="Go!" OnClick="btnSearch_Click"></asp:Button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                        <div class="table-responsive">
                            <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper" role="grid">

                                
                                
                                <table class="table table-striped m-b-none dataTable" data-ride="datatables" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
                                    <thead>
                                        <tr role="row">
                                            <th width="20%" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 192px;">Event Name</th>
                                            <th width="20%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 248px;">Event Type</th>
                                            <th width="25%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 247px;">Subject</th>
                                            <th width="25%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 247px;">Description</th>

                                            <th width="10%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 137px;"></th>
                                        </tr>
                                    </thead>
                                    <tbody role="alert" aria-live="polite" aria-relevant="all">
                                        <asp:Repeater ID="rptEvent" runat="server" OnItemDataBound="rptEvent_ItemDataBound">
                                            <ItemTemplate>
                                                <tr class="odd">
                                                    <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("EventName") %></td>
                                                    <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("EventTypeID") %></td>
                                                    <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("Subject") %></td>
                                                    <td valign="top" colspan="1" class="dataTables_empty"><%# (Eval("Description").ToString().Length<=25)? Eval("Description"): Eval("Description").ToString().Substring(0,20) %>
                                                        <button type="reset" class="btn btn-sm btn-info pop-up" data-toggle="popover" data-html="true" data-placement="top"
                                                            data-content="<div class='scrollable' style='height:40px'><%# Eval("Description") %></div>"
                                                            title="" data-original-title="<button type=&quot;button&quot; class=&quot;close pull-right&quot; data-dismiss=&quot;popover&quot;>×</button>Popover on top">
                                                            More
                                                        </button>
                                                    </td>
                                                    <td valign="top" colspan="1" class="dataTables_empty">
                                                        <asp:LinkButton runat="server" ID="lnkbtnInfo" class="btn btn-sm btn-icon btn-success control-icon" OnClick="lnkbtnInfo_Click" CommandArgument='<%# Eval("EventID") %>'><i class="fa fa-info"></i></asp:LinkButton>


                                                        <asp:LinkButton ID="btnDelete" runat="server" class="btn btn-sm btn-icon btn-danger control-icon" CommandArgument='<%# Eval("EventID") %>' OnClick="btnDelete_Click"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                                        <a href="AddEvent.aspx?EventID=<%# Eval("EventID") %>" class="btn btn-sm btn-icon btn-info control-icon"><i class="fa fa-pencil"></i></a>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <tr>
                                                    <td colspan="5">
                                                        <asp:Label runat="server" Visible="false" ID="lblEmpty" Text="Records Not Found....">

                                                        </asp:Label>
                                                    </td>
                                                </tr>
                                            </FooterTemplate>
                                        </asp:Repeater>


                                    </tbody>
                                </table>
                               
                            </div>
                        </div>
                    </section>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="PanelSingleData" runat="server">
                    <div class="row">
                        <div class="col-sm-6">
                            <p>
                                <strong>Event Name: </strong>
                                <asp:Literal ID="LitEventName" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>Event Subject: </strong>
                                <asp:Literal ID="LitSubject" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>Descrpition: </strong>
                                <asp:Literal ID="LitDesc" runat="server"></asp:Literal>
                            </p>
                        </div>

                        <div class="col-sm-6">
                            <p>
                                <strong>Venue: </strong>
                                <asp:Literal ID="LitVenue" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>Start Time: </strong>
                                <asp:Literal ID="LitStartTime" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>End Time: </strong>
                                <asp:Literal ID="LitEndTime" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <asp:LinkButton runat="server" ID="back" CssClass="button" OnClick="back_Click" Text="Back"></asp:LinkButton>
                            </p>


                        </div>
                    </div>
                </asp:PlaceHolder>

            </div>
        </form>
    </section>



    <script>
        function HighPriority() {
            $("#EventHeader").removeClass("hign-priority");
            $("#EventHeader").addClass("low-priority");
        }

        function LowPriority() {
            $("#EventHeader").removeClass("low-priority");
            $("#EventHeader").addClass("hign-priority");
        }
    </script>
</asp:Content>

