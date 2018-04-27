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
        <li><a href="Default.aspx"><i class="fa fa-home"></i> Home</a></li>
        <li class="active"><i class="fa fa-building"></i> Complaints</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Complains</h1>
            </div>
        </header>
        <form runat="server">

       
        <div class="panel-body">
            <asp:PlaceHolder ID="PanelGridView" runat="server">
                <section class="panel panel-default">
                    <header class="panel-heading">DataTables <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data." data-original-title="" title=""></i></header>
                    <div class="table-responsive">
                        <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper" role="grid">
                            <div class="row">
                                <div class="col-sm-4">
                                </div>
                                <div class="col-sm-4">
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
                                    <asp:Repeater ID="rptComplaints" runat="server" OnItemDataBound="rptComplaints_ItemDataBound">
                                        <ItemTemplate>
                                            <tr class="odd">
                                                <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("FlatNo") %></td>
                                                <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("ComplaintType") %></td>
                                                <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("Subject") %> </td>
                                                <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("Description") %></td>

                                                <td valign="top" colspan="1" class="dataTables_empty">
                                                    <asp:LinkButton runat="server" ID="lnkbtnInfo" class="btn btn-sm btn-icon btn-success control-icon" OnClick="lnkbtnInfo_Click" CommandArgument='<%# Eval("ComplaintID") %>'><i class="fa fa-info"></i></asp:LinkButton>
                                                    <a href="ComplainsReply.aspx?complaintId=<%# Eval("ComplaintID") %>" class="btn btn-sm btn-icon btn-warning control-icon"><i class="fa fa-reply"></i></a>
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
                <div class="col-sm-12">
                    <p><strong>Subject: </strong> <asp:Literal ID="LitSubject" runat="server"></asp:Literal></p>
                </div>
                <div class="col-sm-12">
                    <p><strong>Body: </strong> <asp:Literal ID="LitBody" runat="server"></asp:Literal></p>
                </div>
                <div class="row" style="margin-top: 5px;">
                    <div class="col-sm-4">
                        <p><strong>Type: </strong> <asp:Literal ID="LitType" runat="server"></asp:Literal></p>

                    </div>
                    <div class="col-sm-4">
                        <p><strong>Complaint On: </strong> <asp:Literal ID="LitComplaintOn" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-sm-4">
                        <p><strong>Priority: </strong> <asp:Literal ID="Litpriority" runat="server"></asp:Literal></p>
                    </div>

                </div>
               <%-- <asp:PlaceHolder ID="panelResponse" runat="server" Visible="false">
                    <div class="col-sm-12">
                       
                        <div class="col-sm-6">
                            <p><strong>Handled By: </strong> <asp:Literal ID="LitHandledBy" runat="server"></asp:Literal></p>
                        </div>
                        <div class="col-sm-6">
                            <p><strong>Handled On: </strong> <asp:Literal ID="LitHandledOn" runat="server"></asp:Literal></p>
                        </div>


                    </div>
                    <div class="col-sm-12">
                        <p><strong>Response: </strong> <asp:Literal ID="LitResponse" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-sm-12 col-sm-offset-4">
                         <p>
                                <asp:LinkButton runat="server" ID="back" CssClass="button" OnClick="back_Click" Text="Back"></asp:LinkButton>
                            </p>
                    </div>
                </asp:PlaceHolder>--%>
            </asp:PlaceHolder>
        </div>
             </form>
    </section>
    
</asp:Content>

