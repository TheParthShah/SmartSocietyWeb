<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Staff" %>

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

    <form runat="server">
        <section class="panel panel-default">
            <header class="panel-heading font-bold">
                <div class="row">

                    <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                    <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Staff Details</h1>
                </div>
            </header>

            <div class="panel-body">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                    <section class="panel panel-default">
                        <header class="panel-heading">Staff Details <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data." data-original-title="" title=""></i></header>
                        <div class="row text-sm wrapper">
                            <div class="col-sm-5 m-b-xs">
                                <a class="button" href="AddStaff.aspx">Add New Staff</a>
                                <%--<select class="input-sm form-control input-s-sm inline">
                            <option value="0">Bulk action</option>
                            <option value="1">Delete selected</option>
                            <option value="2">Bulk edit</option>
                            <option value="3">Export</option>
                        </select>
                        <button class="btn btn-sm btn-default">Apply</button>--%>
                            </div>
                            <div class="col-sm-4 m-b-xs">
                                <%--<div class="btn-group" data-toggle="buttons">
                            <label class="btn btn-sm btn-default active">
                                <input name="options" id="option1" type="radio">
                                Day
                            </label>
                            <label class="btn btn-sm btn-default">
                                <input name="options" id="option2" type="radio">
                                Week
                            </label>
                            <label class="btn btn-sm btn-default">
                                <input name="options" id="option2" type="radio">
                                Month
                            </label>
                        </div>--%>
                            </div>
                            <div class="col-sm-3">
                                <div class="input-group">
                                    <asp:TextBox runat="server" ID="txtSearch" class="input-sm form-control" placeholder="Search" type="text" />

                                    <span class="input-group-btn">
                                        <asp:Button ID="btnSearch" runat="server" class="btn btn-sm btn-default" Text="Go!" OnClick="btnSearch_Click"></asp:Button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">

                            <table class="table table-striped m-b-none dataTable" data-ride="datatables" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
                                <thead>
                                    <tr role="row">
                                        <th width="25%" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 192px;">Name</th>
                                        <th width="25%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 248px;">Type</th>
                                        <th width="25%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 247px;">Contact No</th>


                                        <th width="25%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 137px;"></th>
                                    </tr>
                                </thead>
                                <tbody role="alert" aria-live="polite" aria-relevant="all">

                                    <asp:Repeater ID="rptStaff" runat="server">

                                        <ItemTemplate>
                                            <tr class="odd">
                                                <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("MemberName") %></td>
                                                <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("MemberType") %></td>
                                                <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("ContactNo1") %></td>

                                                <td valign="top" colspan="1" class="dataTables_empty">
                                                    <asp:LinkButton runat="server" CommandArgument='<%# Eval("MemberID") %>' class="btn btn-sm btn-icon btn-success control-icon" ID="btnInfo" OnClick="btnInfo_Click"><i class="fa fa-info"></i></asp:LinkButton>

                                                    <asp:LinkButton runat="server" CommandArgument='<%# Eval("MemberID") %>' ID="lnkbtnDelete" OnClick="lnkbtnDelete_Click" class="btn btn-sm btn-icon btn-danger control-icon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                                    <a href="AddStaff.aspx?StaffID=<%# Eval("MemberID") %>" class="btn btn-sm btn-icon btn-info control-icon"><i class="fa fa-pencil"></i></a>
                                                    <a href="#" class="btn btn-sm btn-icon btn-warning control-icon"><i class="fa fa-file"></i></a>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                            </table>
                            <%--<div class="row">
                                    <div class="col-sm-6">
                                        <div class="dataTables_info" id="DataTables_Table_0_info">Showing 0 to 0 of 0 entries</div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="dataTables_paginate paging_full_numbers" id="DataTables_Table_0_paginate"><a tabindex="0" class="first paginate_button paginate_button_disabled" id="DataTables_Table_0_first">First</a><a tabindex="0" class="previous paginate_button paginate_button_disabled" id="DataTables_Table_0_previous">Previous</a><span></span><a tabindex="0" class="next paginate_button paginate_button_disabled" id="DataTables_Table_0_next">Next</a><a tabindex="0" class="last paginate_button paginate_button_disabled" id="DataTables_Table_0_last">Last</a></div>
                                    </div>
                                </div>--%>
                        </div>

                    </section>
                </asp:PlaceHolder>

                <asp:PlaceHolder runat="server" ID="PanelSingleData">


                    <div class="row">
                        <div class="row">
                            <div class="col-sm-3 text-center">
                                <asp:Image runat="server" class="img-responsive" Style="padding: 10px;" ImageUrl="images/app.png" Height="200" Width="200" />
                            </div>
                            <div class="col-sm-9">
                                <h4><strong>Name: </strong>
                                    <asp:Literal ID="LitName" runat="server"></asp:Literal></h4>
                                <p>
                                    <strong>Member Type: </strong>
                                    <asp:Literal ID="LitType" runat="server"></asp:Literal>
                                </p>
                                <p>
                                    <strong>Date of Birth: </strong>
                                    <asp:Literal ID="LitDOB" runat="server"></asp:Literal>
                                </p>
                                <p>
                                    <strong>Address: </strong>
                                    <asp:Literal ID="LitAddress" runat="server"></asp:Literal>
                                </p>
                                <p>
                                    <strong>Contact No: </strong>
                                    <asp:Literal ID="LitContactNo" runat="server"></asp:Literal>
                                </p>
                                <p>
                                    <strong>Date of joining: </strong>
                                    <asp:Literal ID="LitDOJ" runat="server"></asp:Literal>
                                </p>
                                <p>
                                    <strong>Status: </strong>
                                    <asp:Literal ID="LitStatus" runat="server"></asp:Literal>
                                </p>
                                <p>
                                    <asp:Button runat="server" ID="btnBack" CssClass="button" Text="Back" OnClick="btnBack_Click" />
                                </p>
                            </div>

                        </div>

                    </div>
                </asp:PlaceHolder>
            </div>
        </section>


    </form>
</asp:Content>

