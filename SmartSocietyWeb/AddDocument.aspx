<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddDocument.aspx.cs" Inherits="AddDocument" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Flat Details</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Society Document</h1>
            </div>
        </header>

        <div class="panel-body">
            <form class="form-horizontal" method="get" runat="server">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Document Type</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddDocumentType" runat="server" class="form-control">
                            <asp:ListItem Value="1" Text="Rent Agreement"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Purchase Document"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">File Type</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddFileType" runat="server" class="form-control">
                            <asp:ListItem Value="1" Text="PDF"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Excel Sheet"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">File</label>
                    <div class="col-sm-10">
                        <asp:FileUpload ID="fuFile" runat="server" />
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

