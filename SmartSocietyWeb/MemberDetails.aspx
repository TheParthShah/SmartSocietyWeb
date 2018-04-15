<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MemberDetails.aspx.cs" Inherits="MemberDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .text-lg {
            font-size: 16px;
        }

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
    </style>
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="Default.aspx"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-users"></i>Member Details</li>
    </ul>

    <form class="form-horizontal" method="post" runat="server">
        <section class="panel panel-default">
            <header class="panel-heading font-bold">
                <div class="row">

                    <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                    <h1 class="col-sm-10" style="font-size: 20pt; margin-top: 5px;">Member Details</h1>
                    <asp:LinkButton Visible="false" ID="lnkbtnViewAll" runat="server" CssClass="col-sm-1 btn btn-primary" OnClick="lnkbtnViewAll_Click">View All</asp:LinkButton>
                </div>
            </header>

            <div class="panel-body">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                    <section class="panel panel-default">
                        <header class="panel-heading">Resident Details </header>
                        <div class="row text-sm wrapper">
                            <div class="col-sm-5 m-b-xs">
                                
                            </div>
                            <div class="col-sm-4 m-b-xs">
                                
                            </div>
                            <div class="col-sm-3">
                                <div class="input-group">
                                    <asp:TextBox runat="server" ID="txtSearchFlat" class="input-sm form-control" placeholder="Search" list="Flatno" type="text" required="required" />
                                    <datalist id="Flatno">
                                        <option value="1"></option>
                                        <option value="2"></option>
                                        <option value="3"></option>
                                        <option value="4"></option>
                                        <option value="5"></option>
                                        <option value="6"></option>
                                        <option value="7"></option>
                                        <option value="8"></option>
                                        <option value="9"></option>
                                        <option value="10"></option>
                                        <option value="12"></option>
                                        <option value="13"></option>
                                        <option value="14"></option>
                                        <option value="15"></option>
                                        <option value="16"></option>

                                    </datalist>
                                    <span class="input-group-btn">
                                        <asp:Button ID="btnSearch" runat="server" class="btn btn-sm btn-default" Text="Go!" OnClick="btnSearch_Click"></asp:Button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive" id="Datatable">
                            <table class="table table-striped b-t b-light text-lg">
                                <thead>
                                    <tr>

                                        <th class="th-sortable" data-toggle="class">Name <span class="th-sort"><i class="fa fa-sort-down text"></i><i class="fa fa-sort-up text-active"></i><i class="fa fa-sort"></i></span></th>
                                        <th>Flat ID</th>
                                        <th>Email ID</th>
                                        <th width="10%"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rptResident" runat="server" OnItemDataBound="rptResident_ItemDataBound">
                                        <ItemTemplate>
                                            <tr>

                                                <td><%# Eval("ResidentName") %></td>
                                                <td><%# Eval("FlatNo") %></td>
                                                <td><%# Eval("Email") %></td>
                                                <td>
                                                    <asp:LinkButton runat="server" ID="lnkbtnInfo" class="btn btn-sm btn-icon btn-success control-icon" OnClick="lnkbtnInfo_Click" CommandArgument='<%# Eval("ResidentID") %>'><i class="fa fa-info"></i></asp:LinkButton>

                                                    <asp:LinkButton runat="server" class="btn btn-sm btn-icon btn-danger control-icon" ID="InactiveResident" CommandArgument='<%# Eval("ResidentID") %>' OnClick="InactiveResident_Click"><i class="fa fa-trash-o"></i></asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            <tr>
                                                <td colspan="4">
                                                    <asp:Label runat="server" Visible="false" ID="lblEmpty" Text="Records Not Found....">

                                                    </asp:Label>
                                                </td>
                                            </tr>
                                        </FooterTemplate>
                                    </asp:Repeater>


                                </tbody>
                            </table>
                        </div>
                        <footer class="panel-footer">
                            <%--<div class="row">
                            <div class="col-sm-4 hidden-xs">
                                <%--<select class="input-sm form-control input-s-sm inline">
                                <option value="0">Bulk action</option>
                                <option value="1">Delete selected</option>
                                <option value="2">Bulk edit</option>
                                <option value="3">Export</option>
                            </select>
                            <button class="btn btn-sm btn-default">Apply</button>
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
                        </div>--%>
                        </footer>
                    </section>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="PlaceHolder2" runat="server">
                    <div class="row">
                        <div class="col-sm-3 text-center">
                            <asp:Image ID="ResidentImage" runat="server" class="img-responsive" Style="padding: 10px;" ImageUrl="~/ServerImages/TemplateImages/" Height="200" Width="200" />
                        </div>
                        <div class="col-sm-9">
                            <p>
                                <strong>Name: </strong>
                                <asp:Literal ID="litName" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>Gender: </strong>
                                <asp:Literal ID="LitGender" runat="server"></asp:Literal>
                            </p>

                            <p>
                                <strong>Date of Birth: </strong>
                                <asp:Literal ID="litDOB" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>Occupation: </strong>
                                <asp:Literal ID="litOccupation" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>Contact: </strong>
                                <asp:Literal ID="litContact1" runat="server"></asp:Literal>

                            </p>
                            <p>
                                <strong>Email: </strong>
                                <asp:Literal ID="litEmail" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>Flat No: </strong>
                                <asp:Literal ID="litFlatno" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <strong>Position: </strong>
                                <asp:Literal ID="litPosition" runat="server"></asp:Literal>
                            </p>
                            <p>
                                <asp:LinkButton runat="server" ID="back" CssClass="button" OnClick="back_Click" Text="Back"></asp:LinkButton>
                            </p>
                        </div>

                    </div>
                </asp:PlaceHolder>
            </div>
        </section>


    </form>
</asp:Content>

