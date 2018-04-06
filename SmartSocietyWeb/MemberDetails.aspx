<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MemberDetails.aspx.cs" Inherits="MemberDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .text-lg {
            font-size: 16px;
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
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Member Details</h1>
            </div>
        </header>

        <div class="panel-body">
            <section class="panel panel-default">
                <header class="panel-heading">Resident Details </header>
                <div class="row text-sm wrapper">
                    <div class="col-sm-5 m-b-xs">
                        <select class="input-sm form-control input-s-sm inline">
                            <option value="0">Bulk action</option>
                            <option value="1">Delete selected</option>
                            <option value="2">Bulk edit</option>
                            <option value="3">Export</option>
                        </select>
                        <button class="btn btn-sm btn-default">Apply</button>
                    </div>
                    <div class="col-sm-4 m-b-xs">
                        <div class="btn-group" data-toggle="buttons">
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
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="input-group">
                            <input class="input-sm form-control" placeholder="Search" type="text">
                            <span class="input-group-btn">
                                <button class="btn btn-sm btn-default" type="button">Go!</button>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-striped b-t b-light text-lg">
                        <thead>
                            <tr>

                                <th class="th-sortable" data-toggle="class">Name <span class="th-sort"><i class="fa fa-sort-down text"></i><i class="fa fa-sort-up text-active"></i><i class="fa fa-sort"></i></span></th>
                                <th>Flat ID</th>
                                <th>Email ID</th>
                                <th width="80"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>

                                <td>MR XYZ</td>
                                <td>4c</td>
                                <td>Jul 25, 2013</td>
                                <td><a href="#"><i class="fa fa-info-circle text-info"></i></a> &nbsp;&nbsp;
                                    <a href="#" class="active" data-toggle="class">
                                        <i class="fa fa-check text-success text-active"></i>
                                        <i class="fa fa-times text-danger text"></i></a></td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <footer class="panel-footer">
                    <div class="row">
                        <div class="col-sm-4 hidden-xs">
                            <%--<select class="input-sm form-control input-s-sm inline">
                                <option value="0">Bulk action</option>
                                <option value="1">Delete selected</option>
                                <option value="2">Bulk edit</option>
                                <option value="3">Export</option>
                            </select>
                            <button class="btn btn-sm btn-default">Apply</button>--%>
                        </div>
                        <div class="col-sm-4 text-center"><small class="text-muted inline m-t-sm m-b-sm">showing 20-30 of 50 items</small> </div>
                        <div class="col-sm-4 text-right text-center-xs">
                            <ul class="pagination pagination-sm m-t-none m-b-none">
                                <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </footer>
            </section>
        </div>
    </section>
</asp:Content>

