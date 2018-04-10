<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddEvent.aspx.cs" Inherits="AddEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Flat Details</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Event Details</h1>
            </div>
        </header>

        <div class="panel-body">
            <form class="form-horizontal" method="get" runat="server">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Event Name</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtEventName" class="form-control" placeholder="Event Name"> </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Event Type</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddEventType" runat="server" class="form-control">
                            <asp:ListItem Value="1" Text="Festival"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Meeting"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Event Venue</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="TxtVenue" class="form-control" placeholder="Event Venue"> </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Start Time</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" TextMode="DateTime" ID="txtStartTime" class="form-control" placeholder="Event Start Time"> </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">End Time</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" TextMode="DateTime" ID="txtEndTime" class="form-control" placeholder="Event End Time"> </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Subject</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtSubject" class="form-control" placeholder="Subject"> </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Description</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtdescription" TextMode="MultiLine" class="form-control" Rows="4" placeholder="Description"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Event Priority</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddpriority" runat="server" class="form-control">
                            <asp:ListItem Value="1" Text="High"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Low"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
              
                <div class="line line-dashed line-lg pull-in"></div>
                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-2">
                            <button type="submit" class="btn btn-default">Cancel</button>
                            <asp:Button runat="server" ID="btnSave" class="btn btn-primary" Text="Save Changes"></asp:Button>
                        </div>
                    </div>
            </form>
        </div>
    </section>
</asp:Content>

