<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddInventory.aspx.cs" Inherits="AddInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="Default.aspx"><i class="fa fa-home"></i> Home</a></li>
        <li><a href="Inventory.aspx"><i class="fa fa-home"></i> Inventory</a></li>
        <li class="active"><i class="fa fa-building"></i> Add/Edit Inventory</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Add/Edit Inventory</h1>
            </div>
        </header>

        <div class="panel-body">
            <form class="form-horizontal" runat="server">
                <asp:HiddenField runat="server" ID="hdnImageFile" Value=""/>
                <asp:HiddenField runat="server" ID="hdnDocFile" Value=""/>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Name</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtAssetName" class="form-control" placeholder="Inventory Name" required="required"> </asp:TextBox>
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
                        <asp:TextBox runat="server" ID="txtPurchaseOn" TextMode="Date" class="form-control" placeholder="Date of Birth" required="required"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Amount</label>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtValue" class="form-control" placeholder="Price" required="required"></asp:TextBox>
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
                        <asp:FileUpload ID="flUpImage" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Document</label>
                    <div class="col-sm-10">
                        <asp:FileUpload ID="flUpDoc" runat="server" />
                    </div>
                </div>


                <div class="line line-dashed line-lg pull-in"></div>
                <div class="form-group">
                    <div class="col-sm-4 col-sm-offset-2">
                        <asp:LinkButton runat="server" ID="lnkbtnCancel" CssClass="btn btn-default" OnClick="lnkbtnCancel_Click">Cancel</asp:LinkButton>
                        <asp:Button runat="server" ID="btnSave" class="btn btn-primary" Text="Save Changes" OnClick="btnSave_Click"></asp:Button>
                    </div>
                </div>
            </form>
        </div>
    </section>
</asp:Content>

