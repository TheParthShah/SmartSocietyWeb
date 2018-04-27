<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddPoll.aspx.cs" Inherits="AddPoll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="Default.aspx"><i class="fa fa-home"></i>Home</a></li>
        <li><a href="Polls.aspx"><i class="fa fa-home"></i>Polls</a></li>
        <li class="active"><i class="fa fa-building"></i>Add Poll</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Poll Details</h1>
            </div>
        </header>

        <div class="panel-body">
            <form class="form-horizontal" runat="server">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Poll Title</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtPolltitle" class="form-control" placeholder="Inventory Name" required="required"> </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">option 1</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtOption1" class="form-control" placeholder="Option 1" required="required"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">option 2</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtOption2" class="form-control" placeholder="Option 2" required="required"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">option 3</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtOption3" class="form-control" placeholder="Option 3"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">option 4</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtOption4" class="form-control" placeholder="Option 4"></asp:TextBox>
                    </div>
                </div>



                <div class="line line-dashed line-lg pull-in"></div>
                <div class="form-group">
                    <div class="col-sm-4 col-sm-offset-2">
                        <button type="submit" class="btn btn-default">Cancel</button>
                        <asp:Button runat="server" ID="btnSave" class="btn btn-primary" Text="Save Changes" OnClick="btnSave_Click"></asp:Button>
                    </div>
                </div>
            </form>
        </div>
    </section>
</asp:Content>

