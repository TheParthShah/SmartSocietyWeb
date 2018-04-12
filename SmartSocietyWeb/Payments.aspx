<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payments.aspx.cs" Inherits="Payments" %>

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
            font-size: 12px;
            margin-top: 15px;
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

    <form runat="server" class="form-horizontal">
        <section class="panel panel-default">
            <header class="panel-heading font-bold">
                <div class="row">

                    <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                    <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Due Payments</h1>
                </div>
            </header>

            <div class="panel-body">
                <section class="panel panel-default">
                    <header class="panel-heading">DataTables <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data." data-original-title="" title=""></i></header>
                    <div class="table-responsive">

                        <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper" role="grid">
                            <div class="row">
                                <div class="col-sm-2 text-right">
                                    <a class="button" data-toggle="modal" href="#addPayment">Add New Payment</a>

                                </div>
                                <div class="col-sm-2 text-left">
                                    <a href="#viewPayments" data-toggle="modal" class="button">Payments for Month</a>
                                </div>
                                <div class="col-sm-4">
                                    <div class="dataTables_filter">
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtDate" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="dataTables_filter form-inline">
                                        <div class="form-group">
                                            <label class="col-sm-4 control-label">Switch</label>

                                            <div class="col-sm-8">
                                                <label class="switch">
                                                    <asp:CheckBox runat="server" ID="optPaid" OnCheckedChanged="optPaid_CheckedChanged"/>
                                                    <span></span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--<div id="DataTables_Table_0_processing" class="dataTables_processing" style="visibility: visible;">Processing...</div>--%>
                            </div>
                            <table class="table table-striped m-b-none dataTable" data-ride="datatables" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
                                <thead>
                                    <tr role="row">
                                        <th width="25%" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 192px;">Payment Name</th>
                                        <th width="20%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 248px;">Flat ID</th>
                                        <th width="25%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 247px;">Due Date</th>
                                        <th width="25%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 247px;">Amount</th>

                                        <th width="5%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 137px;"></th>
                                    </tr>
                                </thead>
                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                    <tr class="odd">
                                        <td valign="top" colspan="1" class="dataTables_empty">XYZ</td>
                                        <td valign="top" colspan="1" class="dataTables_empty">PQR</td>
                                        <td valign="top" colspan="1" class="dataTables_empty">RTY</td>
                                        <td valign="top" colspan="1" class="dataTables_empty">1235
                                        </td>
                                        <td valign="top" colspan="1" class="dataTables_empty">
                                            <a href="#mymodal" data-toggle="modal" class="btn btn-sm btn-icon btn-success control-icon"><i class="fa fa-info"></i></a>
                                            <a class="btn btn-sm btn-icon btn-warning control-icon"><i class="fa fa-rupee"></i></a>

                                            
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


        <div id="addPayment" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Payment</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Payment Name</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtSubject" class="form-control" placeholder="Payment"> </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Payment For</label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddPaymentFor" runat="server" class="form-control">
                                    <asp:ListItem Value="0" Text="All"></asp:ListItem>
                                    <asp:ListItem Value="-1" Text="Rent"></asp:ListItem>
                                    <asp:ListItem Value="-2" Text="Owner"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Amount</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtAmount" class="form-control" placeholder="Amount"> </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Penalty</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtPenalty" class="form-control" placeholder="Penalty"> </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Due Date</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtDueDate" TextMode="date" class="form-control" placeholder="Inventory Name"> </asp:TextBox>
                            </div>
                        </div>


                        <div class="line line-dashed line-lg pull-in"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                
                                <asp:Button runat="server" ID="btnSave" class="btn btn-primary" Text="Save Changes"></asp:Button>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <div id="viewPayments" class="modal fade" role="dialog">
            <div class="modal-dialog" style="width: 650px;">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Payments For Month</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <p><strong>Name</strong> </p>
                            </div>
                            <div class="col-sm-3">
                                <p><strong>Payment For</strong></p>
                            </div>
                            <div class="col-sm-3">
                                <p><strong>Payment Amount</strong></p>
                            </div>
                            <div class="col-sm-3">
                                <p><strong>Due Date</strong></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <p>Name </p>
                            </div>
                            <div class="col-sm-3">
                                <p>Payment For</p>
                            </div>
                            <div class="col-sm-3">
                                <p>Payment Amount</p>
                            </div>
                            <div class="col-sm-3">
                                <p>Due Date </p>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
        <div id="mymodal" class="modal fade" role="dialog">
            <div class="modal-dialog" style="width: 650px;">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Payment Details</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <p>Received PAymnets Details</p>
                            </div>
                            <div class="col-sm-6">
                                <p>Transaction Details</p>
                            </div>

                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>

            </div>
        </div>
    </form>
</asp:Content>

