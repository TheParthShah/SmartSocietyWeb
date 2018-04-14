<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ComplainsReply.aspx.cs" Inherits="ComplainsReply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Flat Details</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Compliant Redressal</h1>
            </div>
        </header>

        <div class="panel-body">
            <form class="form-horizontal" method="get" runat="server">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Subject</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtSubject" class="form-control" placeholder="Inventory Name"> </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                        <label class="col-sm-2 control-label">Body</label>
                        <div class="col-sm-10">
                            <asp:TextBox runat="server" ID="txtResponse" TextMode="MultiLine" class="form-control" rows="5" placeholder="Society Address"></asp:TextBox>
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

