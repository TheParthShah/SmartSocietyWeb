<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Complains.aspx.cs" Inherits="Complains" %>

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
    </style>
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Flat Details</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Complains</h1>
            </div>
        </header>

        <div class="panel-body">
            <section class="panel panel-default">
                <header class="panel-heading">DataTables <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data." data-original-title="" title=""></i></header>
                <div class="table-responsive">
                    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper" role="grid">
                        <div class="row">
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4">
                                <div id="DataTables_Table_0_length" class="dataTables_length">
                                    <label>
                                        Show
                                        <select size="1" name="DataTables_Table_0_length" aria-controls="DataTables_Table_0">
                                            <option value="10" selected="selected">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select>
                                        entries</label>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="dataTables_filter" id="DataTables_Table_0_filter">
                                    <label>
                                        Search:
                                        <input type="text" aria-controls="DataTables_Table_0"></label>
                                </div>
                            </div>
                            <%--<div id="DataTables_Table_0_processing" class="dataTables_processing" style="visibility: visible;">Processing...</div>--%>
                        </div>
                        <table class="table table-striped m-b-none dataTable" data-ride="datatables" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
                            <thead>
                                <tr role="row">
                                    <th width="15%" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">Flat ID</th>

                                    <th width="15%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Type</th>
                                    <th width="20%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Subject</th>
                                    <th width="35%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Description</th>

                                    <th width="15%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending"></th>
                                </tr>
                            </thead>
                            <tbody role="alert" aria-live="polite" aria-relevant="all">
                                <tr class="odd">
                                    <td valign="top" colspan="1" class="dataTables_empty">1</td>
                                    <td valign="top" colspan="1" class="dataTables_empty">PQR</td>
                                    <td valign="top" colspan="1" class="dataTables_empty">vnjdsknvk ekrng </td>
                                    <td valign="top" colspan="1" class="dataTables_empty">Deccription</td>

                                    <td valign="top" colspan="1" class="dataTables_empty">
                                        <a href="#myModal" data-toggle="modal" class="btn btn-sm btn-icon btn-success control-icon"><i class="fa fa-info"></i></a>

                                        <a href="ComplainsReply.aspx" class="btn btn-sm btn-icon btn-warning control-icon"><i class="fa fa-reply"></i></a>
                                    </td>
                                </tr>
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
        </div>
    </section>
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Complaint Redressal</h4>
                </div>
                <div class="modal-body">

                    <div class="col-sm-12">
                        <p>Subject</p>
                    </div>
                    <div class="col-sm-12">
                        <p>Body</p>
                    </div>
                    <div class="row" style="margin-top: 5px;">
                        <div class="col-sm-4">
                            <p>Type</p>

                        </div>
                        <div class="col-sm-4">
                            <p>Complaint ON</p>
                        </div>
                        <div class="col-sm-4">
                            <p>Priority</p>
                        </div>

                    </div>
                    <div class="col-sm-12">
                        <p>(If handled warna blank)</p>
                        <div class="col-sm-6">
                            <p>Handled By</p>
                        </div>
                        <div class="col-sm-6">
                            <p>HAndled On</p>
                        </div>


                    </div>
                    <div class="col-sm-12">
                        <p>Resonse</p>
                    </div>
                </div>
                <div class="modal-footer">
                    <a type="button" href="ComplainsReply.aspx" class="btn btn-default">Reply</a>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

