<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Vendor.aspx.cs" Inherits="Vendor" %>

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
                    <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Vendor Details</h1>
                </div>
            </header>

            <div class="panel-body">
                <section class="panel panel-default">


                    <header class="panel-heading">Resident Details </header>
                    <div class="row text-sm wrapper">
                        <div class="col-sm-5 m-b-xs">
                            <a class="button" href="AddVendor.aspx">Add New Vendor</a>
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
                    <table class="table table-striped m-b-none dataTable" data-ride="datatables" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
                        <thead>
                            <tr role="row">
                                <th width="20%" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 192px;">Vendor Name</th>
                                <th width="20%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 248px;">Vendor Type</th>
                                <th width="25%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 247px;">Address</th>
                                <th width="25%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 247px;">Description</th>

                                <th width="10%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 137px;"></th>
                            </tr>
                        </thead>
                        <tbody role="alert" aria-live="polite" aria-relevant="all">
                            <asp:Repeater ID="rptVendor" runat="server" OnItemDataBound="rptVendor_ItemDataBound">
                                <ItemTemplate>
                                    <tr class="odd">
                                        <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("VendorName") %></td>
                                        <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("VendorType") %></td>
                                        <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("Address") %></td>
                                        <td valign="top" colspan="1" class="dataTables_empty"><%# (Eval("Description").ToString().Length<=25)? Eval("Description"): Eval("Description").ToString().Substring(0,20) %>
                                            <button type="reset" class="btn btn-sm btn-info pop-up" data-toggle="popover" data-html="true" data-placement="top"
                                                data-content="<div class='scrollable' style='height:40px'><%# Eval("Description") %></div>"
                                                title="" data-original-title="<button type=&quot;button&quot; class=&quot;close pull-right&quot; data-dismiss=&quot;popover&quot;>×</button>Popover on top">
                                                ...
                                            </button>
                                        </td>
                                        <td valign="top" colspan="1" class="dataTables_empty">
                                            <asp:LinkButton runat="server" ID="btnDelete" CommandArgument='<%# Eval("VendorID") %>' OnClick="btnDelete_Click" class="btn btn-sm btn-icon btn-danger control-icon"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                            <a href="AddVendor.aspx?VendorID=<%# Eval("VendorID") %>" class="btn btn-sm btn-icon btn-info control-icon"><i class="fa fa-pencil"></i></a>
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

    </form>
</asp:Content>

