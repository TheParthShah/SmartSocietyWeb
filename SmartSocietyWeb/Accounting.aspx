<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Accounting.aspx.cs" Inherits="Accounting" %>

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


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Accounting</h1>
            </div>
        </header>

        <div class="panel-body">
            <form class="form-horizontal" method="get" runat="server">
                <div class="row">
                    <div class="col-sm-12">

                        <div class="col-sm-2">
                            <a href="IncomeExpenseData.aspx" class="button">View Expense</a>
                        </div>
                        <div class="col-sm-2">
                            <a href="IncomeExpenseData.aspx" class="button" >View Incomes</a>
                        </div>

                        <div class="col-sm-4">
                           <div class="col-sm-6 ">
                               <asp:TextBox ID="txtStartDate" runat="server" TextMode="date" CssClass="form-control col-sm-6" ></asp:TextBox>
                           </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtEndDate" runat="server" TextMode="date" CssClass="form-control col-sm-6" ></asp:TextBox>
                            </div>
                            
                        </div>
                        <div class="col-sm-4">
                            <a href="ViewReports.aspx" class="button">Generate Report</a>
                        </div>
                        
                    </div>
                    <div class="line line-dashed line-lg pull-in"></div>
                    <div class="col-sm-6">
                        <h3>Income</h3>
                        <div class="line line-dashed line-lg pull-in"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Income Title</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtIncome" class="form-control" placeholder="Income Name"> </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Income Type</label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddIncomeType" runat="server" class="form-control">
                                    <asp:ListItem Value="All"></asp:ListItem>
                                    <asp:ListItem Value="All"></asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Description</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtdescription" TextMode="MultiLine" class="form-control" Rows="4" placeholder="Description"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Amount</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtAmount" class="form-control" placeholder="Income Name"> </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Date</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtDate" class="form-control" TextMode="Date" placeholder="Income Name"> </asp:TextBox>
                            </div>
                        </div>
                        <div class="line line-dashed line-lg pull-in"></div>
                        <div class="form-group">
                            <div class="col-sm-6 col-sm-offset-2">
                                <button type="submit" class="btn btn-default">Cancel</button>
                                <asp:Button runat="server" ID="btnSave" class="btn btn-primary" Text="Save Changes"></asp:Button>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6" style="border-left: 2px;">
                        <h3>Expense</h3>
                        <div class="line line-dashed line-lg pull-in"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Expense Title</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtExpense" class="form-control" placeholder="Income Name"> </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Expense Tyoe</label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddExpenseType" runat="server" class="form-control">
                                    <asp:ListItem Value="All"></asp:ListItem>
                                    <asp:ListItem Value="All"></asp:ListItem>

                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Description</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtExpenseDesc" TextMode="MultiLine" class="form-control" Rows="4" placeholder="Description"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Amount</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtExpenseAmount" class="form-control" placeholder="Income Name"> </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Date</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtExpenseDate" class="form-control" TextMode="Date" placeholder="Income Name"> </asp:TextBox>
                            </div>
                        </div>
                        <div class="line line-dashed line-lg pull-in"></div>
                        <div class="form-group">
                            <div class="col-sm-6 col-sm-offset-2">
                                <button type="submit" class="btn btn-default">Cancel</button>
                                <asp:Button runat="server" ID="Button1" class="btn btn-primary" Text="Save Changes"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <script src="js/nestable/jquery.nestable.js" cache="false"></script>
    <script src="js/nestable/demo.js" cache="false"></script>
</asp:Content>

