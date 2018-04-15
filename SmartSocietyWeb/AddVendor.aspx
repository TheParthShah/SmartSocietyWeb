<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddVendor.aspx.cs" Inherits="AddVendor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Flat Details</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Vendor Details</h1>
            </div>
        </header>

        <div class="panel-body">
            <form class="form-horizontal" method="post" runat="server">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Vendor Name</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtVendorName" class="form-control" placeholder="Vendor Name" required> </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Vendor Type</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddVendorType" runat="server" class="form-control">
                            <asp:ListItem Value="General"></asp:ListItem>
                            <asp:ListItem Value="Medical"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Vendor Address</label>
                    <div class="col-sm-10">
                        <asp:TextBox required runat="server" ID="txtAddress" TextMode="MultiLine" class="form-control" Rows="5" placeholder="Address"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Vendor Description</label>
                    <div class="col-sm-10">
                        <asp:TextBox required runat="server" ID="txtdescription" TextMode="MultiLine" class="form-control" Rows="4" placeholder="Vendor Description"></asp:TextBox>
                    </div>
                </div>
                <%--<div class="form-group">
                    <label class="col-sm-2 control-label">Map</label>
                    <div class="col-sm-10">
                        Insert Map
                    </div>
                </div>--%>
                <div class="line line-dashed line-lg pull-in"></div>
                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-2">
                            <asp:button runat="server" type="submit" ID="btncancle" class="btn btn-default" Text="Cancle" OnClick="btncancle_Click"></asp:button>
                            <asp:Button runat="server" ID="btnSave"  class="btn btn-primary" Text="Save Changes" OnClick="btnSave_Click"></asp:Button>
                        </div>
                    </div>
            </form>
        </div>
    </section>
</asp:Content>

