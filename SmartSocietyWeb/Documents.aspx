<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Documents.aspx.cs" Inherits="Documents" %>

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
        <li><a href="Default.aspx"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Documents</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Documents</h1>
            </div>
        </header>

        <div class="panel-body">
            <section class="panel panel-default">
                <div class="table-responsive">
                    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper" role="grid">
                        <table class="table table-striped m-b-none dataTable" data-ride="datatables" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
                            <thead>
                                <tr role="row">
                                    <th width="50%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Document Type</th>
                                    <th width="40%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">File Type</th>

                                    <th width="10%" class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending"></th>
                                </tr>
                            </thead>
                            <tbody role="alert" aria-live="polite" aria-relevant="all">
                                <asp:Repeater runat="server" ID="rptDocuments">
                                    <ItemTemplate>
                                        <tr class="odd">
                                            <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("DocumentType") %></td>
                                            <td valign="top" colspan="1" class="dataTables_empty"><%# Eval("FileType") %></td>
                                            <td valign="top" colspan="1" class="dataTables_empty">
                                                <a href='<%# "Docs/"+Eval("Filepath") %>' class="btn btn-sm btn-icon btn-warning control-icon"><i class="fa fa-file"></i></a>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
        </div>
    </section>
</asp:Content>

