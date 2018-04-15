<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddNotice.aspx.cs" Inherits="AddNotice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .notice-margin-bottom{
            margin-bottom: 10px;
            margin-top: 10px;
        }
    </style>
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Society Profile</li>
    </ul>

    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">
                <div class="col-sm-1 text-center">
                    <img class="img-responsive img-circle" style="border: 1px solid;" width="100" height="100" src="images/icon.png" style="margin-bottom: 5px;">
                    <!-- <a href="">Edit Logo</a> -->
                </div>
                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-11" style="font-size: 34pt; margin-top: 5px;">Avishkar Apartments</h1>
            </div>
        </header>


        <div class="panel-body">
            <div class="row">
                <form class="form-horizontal" method="get" runat="server">
                    <div class="col-sm-8">

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Receipient</label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="txtReceipeint" runat="server" class="form-control">
                                    <asp:ListItem Value="All"></asp:ListItem>
                                    <asp:ListItem Value="Rent"></asp:ListItem>
                                    <asp:ListItem Value="Owner"></asp:ListItem>
                                    <asp:ListItem Value="1"></asp:ListItem>
                                    <asp:ListItem Value="2"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Notice Title</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtNotice" class="form-control" placeholder="Society Name"> </asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Description</label>
                            <div class="col-sm-10">
                                <asp:TextBox runat="server" ID="txtDescription" TextMode="MultiLine" class="form-control" Rows="5" placeholder="Society Address"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Priority</label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="txtPriority" runat="server" class="form-control">
                                    <asp:ListItem Value="High"></asp:ListItem>
                                    <asp:ListItem Value="Low"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        
                        
                        <div class="line line-dashed line-lg pull-in"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                 <asp:button runat="server" type="submit" ID="btncancle" class="btn btn-default" Text="Cancle" OnClick="btncancle_Click"></asp:button>
                            <asp:Button runat="server" ID="btnSave"  class="btn btn-primary" Text="Save Changes" OnClick="btnSave_Click"></asp:Button>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 text-center">

                        <div class="row notice-margin-bottom">
                            <h3>General Notices</h3>

                        </div>
                        <div class="row notice-margin-bottom">
                            <asp:Button runat="server" ID="btnWaterSupply" class="btn btn-s-md btn-primary btn-rounded" Text="Water Supply Notice" OnClick="btnWaterSupply_Click"></asp:Button>
                        </div>
                        
                        <div class="row notice-margin-bottom">
                         <asp:Button runat="server" ID="btnMaintenace" class="btn btn-s-md btn-primary btn-rounded" Text="Maintenance Supply Notice" OnClick="btnMaintenace_Click"></asp:Button>
                        </div>

                        <div class="row notice-margin-bottom">
                          <asp:Button runat="server" ID="btnMeeting" class="btn btn-s-md btn-primary btn-rounded" Text="Meeting Notice" OnClick="btnMeeting_Click"></asp:Button>
                        </div>

                        <div class="row notice-margin-bottom">
                           <asp:Button runat="server" ID="btnElectricity" class="btn btn-s-md btn-primary btn-rounded" Text="Electricity Notice" OnClick="btnElectricity_Click"></asp:Button>
                        </div>
                        
                    </div>
                    
                </form>
            </div>



        </div>

    </section>
</asp:Content>

