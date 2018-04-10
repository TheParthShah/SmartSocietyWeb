<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddInventory.aspx.cs" Inherits="AddInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Flat Details</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Inventory Details</h1>
            </div>
        </header>

        <div class="panel-body">
            <form class="form-horizontal" method="get" runat="server">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Name</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtAssetName" class="form-control" placeholder="Inventory Name"> </asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Inventory Type</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddAssetType" runat="server" class="form-control">
                            <asp:ListItem Value="1" Text="Gym"></asp:ListItem>
                            <asp:ListItem Value="2" Text="General"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Lawn"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Purchased On</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtPurchaseOn" TextMode="Date" class="form-control" placeholder="Date of Birth"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Amount</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtValue" class="form-control" placeholder="Price"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Description</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtDescription" TextMode="MultiLine" class="form-control" Rows="4" placeholder="Description (if Any)"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Image</label>
                    <div class="col-sm-10">
                        <asp:FileUpload ID="fuimage" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Document</label>
                    <div class="col-sm-10">
                        <asp:FileUpload ID="fudocument" runat="server" />
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

