<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Inventory.aspx.cs" Inherits="Inventory" %>

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

    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <section class="panel panel-default">
                    <header class="panel-heading font-bold">
                        <div class="row">

                            <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                            <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Inventory Details</h1>
                        </div>
                    </header>
                    <div class="panel-body">
                        <asp:PlaceHolder runat="server" ID="PanelGridView">

                            <section class="panel panel-default">
                                <header class="panel-heading">Inventory <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data." data-original-title="" title=""></i></header>
                                <div class="row text-sm wrapper">
                                    <div class="col-sm-9 row m-b-xs">
                                        <div class="col-sm-4">
                                            <a class="btn btn-success" href="AddInventory.aspx">Add New Inventory</a>
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
                                                    <th width="30%" class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">Asset Name</th>

                                                    <th width="25%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Type</th>
                                                    <th width="25%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Price</th>

                                                    <th width="20%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending"></th>
                                                </tr>
                                            </thead>
                                            <tbody role="alert" aria-live="polite" aria-relevant="all">
                                                <asp:Repeater runat="server" ID="rptInventory">
                                                    <ItemTemplate>
                                                        <tr class="odd">
                                                            <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("AssetName") %></td>
                                                            <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("AssetTypeName") %></td>
                                                            <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("AssetValue") %></td>

                                                            <td valign="top" colspan="1" class="dataTables_empty">
                                                                <asp:LinkButton runat="server" ID="lnkbtnInfo" class="btn btn-sm btn-icon btn-success control-icon" OnClick="lnnkbtnInfo_Click" CommandArgument='<%# Eval("AssetID") %>'><i class="fa fa-info"></i></asp:LinkButton>

                                                                <a href="#" class="btn btn-sm btn-icon btn-danger control-icon"><i class="fa fa-trash-o"></i></a>
                                                                <a href="#" class="btn btn-sm btn-icon btn-info control-icon"><i class="fa fa-pencil"></i></a>
                                                                <a href="#" class="btn btn-sm btn-icon btn-warning control-icon"><i class="fa fa-file"></i></a>
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
                    </div>
                    <asp:PlaceHolder runat="server" ID="PanelSingleData">


                        <div class="row">
                            <div class="col-sm-3 text-center">
                                <asp:Image runat="server" class="img-responsive" Style="padding: 10px;" ImageUrl="images/app.png" Height="200" Width="200" />
                            </div>
                            <div class="col-sm-9">
                                <p>
                                    <h4 class="modal-title">
                                        <strong>Name: </strong>
                                        <asp:Literal runat="server" ID="litInventoryName" Text="--"></asp:Literal></h4>
                                </p>
                                <p>
                                    <strong>Type: </strong>
                                    <asp:Literal runat="server" ID="litInventoryType" Text="--"></asp:Literal>
                                </p>
                                <p>
                                    <strong>Date of Purchase: </strong>
                                    <asp:Literal runat="server" ID="litDOP" Text="--"></asp:Literal>
                                </p>
                                <p>
                                    <strong>Value: </strong>
                                    <asp:Literal runat="server" ID="litInventoryValue" Text="--"></asp:Literal>
                                </p>

                                <p>
                                    <strong>Status: </strong>
                                    <asp:Literal runat="server" ID="litStatus" Text="--"></asp:Literal>
                                </p>
                                <p>
                                    <asp:Button runat="server" ID="btnBack" CssClass="button" Text="Back" OnClick="btnBack_Click" />
                                </p>
                            </div>

                        </div>
                    </asp:PlaceHolder>
                </section>

            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnSearch"/>
            </Triggers>
        </asp:UpdatePanel>
    </form>



</asp:Content>

