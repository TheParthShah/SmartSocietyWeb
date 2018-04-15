<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="~/FacilityBooking.aspx.cs" Inherits="AssetBooking" %>

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
        <li><a href="Default.aspx"><i class="fa fa-home"></i> Home</a></li>
        <li class="active"><i class="fa fa-building"></i> Facility Booking Details</li>
    </ul>

    <form runat="server">
        <section class="panel panel-default">
            <header class="panel-heading font-bold">
                <div class="row">
                    <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Facility Booking Details</h1>
                </div>
            </header>

            <div class="panel-body">
                <asp:PlaceHolder ID="PanelGridView" runat="server">
                    <section class="panel panel-default">
                        <header class="panel-heading">Facility Booking <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data." data-original-title="" title=""></i></header>
                        <div class="row text-sm wrapper">
                            <div class="col-sm-9 row m-b-xs">
                                <div class="col-sm-3">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtStartDate" TextMode="Date"> </asp:TextBox>
                                </div>
                                <div class="col-sm-8">
                                    <asp:Button runat="server" ID="btnApply" CssClass="btn btn-sm col-sm-3 btn-default" Text="Apply" OnClick="btnApply_Click"></asp:Button>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="input-group">
                                    <asp:TextBox runat="server" ID="txtSearch" CssClass="input-sm form-control" placeholder="Search"></asp:TextBox>
                                    
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
                                            <th width="10%" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">Flat ID</th>
                                            <th width="15%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">Facility</th>
                                            <th width="20%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Date</th>
                                            <th width="20%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Description</th>
                                            <th width="20%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Status</th>

                                            <th width="15%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending"></th>
                                        </tr>
                                    </thead>
                                    <tbody role="alert" aria-live="polite" aria-relevant="all">
                                        <asp:Repeater ID="rptBooking" runat="server">
                                            <ItemTemplate>
                                                <tr class="odd">
                                                    <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("FlatNo") %></td>
                                                    <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("FacilityName") %></td>
                                                    <td valign="top" colspan="1" class="dataTables_empty"><%# Convert.ToDateTime(Eval("StartTime")).ToLongDateString() %></td>
                                                    <td valign="top" colspan="1" class="dataTables_empty"><%# (Eval("Description").ToString().Length<=25)? Eval("Description"): Eval("Description").ToString().Substring(0,20) %>
                                                        <button type="reset" class="btn btn-sm btn-info pop-up" data-toggle="popover" data-html="true" data-placement="top"
                                                            data-content="<div class='scrollable' style='height:40px'><%# Eval("Description") %></div>"
                                                            title="" data-original-title="<button type=&quot;button&quot; class=&quot;close pull-right&quot; data-dismiss=&quot;popover&quot;>×</button>Description">
                                                            ... More
                                                        </button>
                                                    </td>
                                                    <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("Status") %></td>
                                                    <td valign="top" colspan="1" class="dataTables_empty">

                                                        <asp:LinkButton runat="server" ID="lnkbtnInfo" class="btn btn-sm btn-icon btn-success control-icon" OnClick="lnnkbtnInfo_Click" CommandArgument='<%# Eval("BookingID") %>'><i class="fa fa-info"></i></asp:LinkButton>
                                                        <a href="#" class="btn btn-sm btn-icon btn-info control-icon"><i class="fa fa-check"></i></a>
                                                        <a href="#" class="btn btn-sm btn-icon btn-danger control-icon"><i class="fa fa-times"></i></a>

                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </tbody>
                                </table>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="dataTables_info" id="DataTables_Table_0_info">Showing 0 to 0 of 0 entries</div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="dataTables_paginate paging_full_numbers" id="DataTables_Table_0_paginate"><a tabindex="0" class="first paginate_button paginate_button_disabled" id="DataTables_Table_0_first">First</a><a tabindex="0" class="previous paginate_button paginate_button_disabled" id="DataTables_Table_0_previous">Previous</a><span></span><a tabindex="0" class="next paginate_button paginate_button_disabled" id="DataTables_Table_0_next">Next</a><a tabindex="0" class="last paginate_button paginate_button_disabled" id="DataTables_Table_0_last">Last</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="PanelSingleData" runat="server">
                    <div class="row">
                        <div class="col-sm-offset-1 col-sm-4">
                            <p>
                                <strong>Flat ID : </strong>
                                <asp:Literal ID="LitFlatID" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>Description: </strong>
                                <asp:Literal ID="LitDesc" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>Facility</strong>
                                <asp:Literal ID="LitFacilityName" runat="server"></asp:Literal>
                            </p>


                        </div>

                        <div class="col-sm-7">

                            <p>
                                <strong>Start Time: </strong>
                                <asp:Literal ID="LitStartTime" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>End Time: </strong>
                                <asp:Literal ID="LitEndTime" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>Status: </strong>
                                <asp:Literal ID="LitStatus" runat="server"></asp:Literal>
                            </p>
                            <asp:PlaceHolder ID="panelReason" runat="server">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <p>
                                            <strong>Reason to reject:</strong>
                                            <asp:Literal ID="LitRason" runat="server"></asp:Literal>
                                        </p>
                                    </div>
                                </div>
                            </asp:PlaceHolder>
                        </div>
                    </div>
                    <p class="col-sm-offset-1">
                        <asp:Button runat="server" ID="btnBack" CssClass="button" Text="Back" OnClick="btnBack_Click" />
                    </p>

                </asp:PlaceHolder>
            </div>
        </section>
    </form>

</asp:Content>

