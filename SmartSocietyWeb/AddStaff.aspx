﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddStaff.aspx.cs" Inherits="AddStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="Default.aspx"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="Staff.aspx"><i class="fa fa-home"></i> Staff</a></li>
        <li class="active"><i class="fa fa-building"></i> Add Staff</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Staff Details</h1>
            </div>
        </header>

        <div class="panel-body">
            <form class="form-horizontal" method="get" runat="server">
                <asp:HiddenField runat="server" ID="hdnImageFile" Value=""/>
                <asp:HiddenField runat="server" ID="hdnDocFile" Value=""/>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Name</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtStaffName" class="form-control" placeholder="Name" required="required"> </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Staff Type</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddMemberType" runat="server" class="form-control">
                            <asp:ListItem Value="Gate Keeper"></asp:ListItem>
                            <asp:ListItem Value="Maid"></asp:ListItem>
                            <asp:ListItem Value="Driver"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Date of Birth</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtDob" TextMode="Date" class="form-control" placeholder="Date of Birth" required="required"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Address</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtaddress" TextMode="MultiLine" class="form-control" Rows="4" required="required" placeholder="Address"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Contact No 1</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtContactNo1" class="form-control" placeholder="Contact Number (Primary)" required="required" TextMode="Number"> </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Contact No 2</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtContactNo2" class="form-control" placeholder="Contact Number (Secondary)" required="required" TextMode="Number"> </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Image</label>
                    <div class="col-sm-10">
                        <asp:FileUpload  ID="fuimage" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Document</label>
                    <div class="col-sm-10">
                        <asp:FileUpload  ID="fudocument" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Date of Joining</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtDoj" TextMode="Date" class="form-control" placeholder="Date of Joining" required="required"></asp:TextBox>
                    </div>
                </div>
                
                <div class="line line-dashed line-lg pull-in"></div>
                <div class="form-group">
                    <div class="col-sm-4 col-sm-offset-2">
                        <asp:Button runat="server" ID="btnCancle" OnClick="btnCancle_Click" type="submit" class="btn btn-default" Text="Cancel"></asp:Button>
                        <asp:Button runat="server" ID="btnSave" class="btn btn-primary" Text="Save Changes" OnClick="btnSave_Click"></asp:Button>
                    </div>
                </div>
            </form>
        </div>
    </section>
</asp:Content>

