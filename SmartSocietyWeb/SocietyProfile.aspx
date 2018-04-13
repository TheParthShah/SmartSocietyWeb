<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SocietyProfile.aspx.cs" Inherits="SocietyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .society-info {
            font-family: 'Century Gothic';
            font-size: 16px;
        }

            .society-info .bold {
                font-weight: bolder;
            }
    </style>
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Society Profile</li>
    </ul>

    <form class="form-horizontal" runat="server">
        <section class="panel panel-default">

            <header class="panel-heading font-bold">
                <div class="row">
                    <div class="col-sm-2 text-center" style="display: flex; justify-content: center; align-content:center;">
                        <asp:Image runat="server" ID="imgLogo" CssClass="img-circle img-responsive " style="border: 1px solid; margin-bottom: 5px; height:100px; width:100px;" ImageUrl="ServerImages/" />
                        <!-- <a href="">Edit Logo</a> -->
                    </div>
                    <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                    <h1 class="col-sm-10" style="font-size: 32pt; margin-top: 7px;">
                        <asp:Literal runat="server" ID="litSocietyTitle" Text="Undefined"></asp:Literal></h1>
                </div>
            </header>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:PlaceHolder runat="server" ID="EditSocietyProfile">
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Name</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="txtSocietyName" class="form-control" placeholder="Society Name"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Address</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="txtAddress" TextMode="MultiLine" class="form-control" Rows="5" placeholder="Society Address"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Pincode</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="txtPincode" class="form-control" placeholder="Area Pincode"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Contact No</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="txtContactNo" class="form-control" placeholder="Contact Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Secretary</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="txtSecretary" class="form-control" placeholder="Secretary Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Builder</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="txtBuilder" class="form-control" placeholder="Builder/Builder-Group name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Email</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="txtEmail" type="email" class="form-control" placeholder="Society Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Registration No</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="txtRegistrationNo" class="form-control" placeholder="Registration Number of society"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Campus Area</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="txtCampusArea" class="form-control" placeholder="Campus Area(In Sq.Ft)"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Society Type</label>
                                <div class="col-sm-10">
                                    <asp:DropDownList ID="ddSocietyType" runat="server" class="form-control">
                                        <asp:ListItem Value="Government"></asp:ListItem>
                                        <asp:ListItem Value="Private"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Society Logo</label>
                                <div class="col-sm-10">
                                    <input ID="flUpImage" type="file" runat="server"/>
                                </div>
                            </div>
                            <div class="line line-dashed line-lg pull-in"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button type="submit" class="btn btn-default">Cancel</button>
                                    <asp:Button runat="server" ID="btnSave" class="btn btn-primary" Text="Save Changes" OnClick="btnSave_Click"></asp:Button>
                                </div>
                            </div>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                        </div>
                    </asp:PlaceHolder>
                </ContentTemplate>
                <Triggers>
                <asp:PostBackTrigger ControlID="btnSave" />
            </Triggers>
            </asp:UpdatePanel>
            <asp:PlaceHolder runat="server" ID="SocietyProfileInfo">
                <div class="panel-body">
                    <div class="form-horizontal society-info">
                        <div class="row">
                            <div class="col-xs-6">

                                <p class="bold">
                                    <asp:Literal runat="server" ID="litSocietyName" Text="Undefined"></asp:Literal>
                                    <br>
                                    <asp:Literal runat="server" ID="litAddress" Text="Undefined"></asp:Literal>
                                </p>
                                <p>
                                    <span class="bold">Telephone :</span>
                                    <asp:Literal runat="server" ID="litPhoneNo" Text="Undefined"></asp:Literal>,
                                <asp:Literal runat="server" ID="litPhoneNo1" Text=""></asp:Literal><br>
                                    <%--<span class="bold">Fax :</span> 800-692-7753<br>--%>
                                    <span class="bold">Email :</span>
                                    <asp:Literal runat="server" ID="litEmail" Text="Undefined"></asp:Literal>
                                    <br>
                                </p>


                            </div>
                            <div class="col-xs-6">
                                <p>

                                    <span class="bold">Registration No :</span>
                                    <asp:Literal runat="server" ID="litRegistrationNo" Text="Undefined"></asp:Literal>
                                    <br />
                                    <span class="bold">Campus Area :</span>
                                    <asp:Literal runat="server" ID="litCampusArea" Text="Undefined"></asp:Literal><br />
                                    <span class="bold">Society Type :</span>
                                    <asp:Literal runat="server" ID="litSocietyType" Text="Undefined"></asp:Literal>
                                    <br />
                                    <span class="bold">Secretary :</span>
                                    <asp:Literal runat="server" ID="litSecretaryName" Text="Undefined"></asp:Literal>
                                    <br>
                                    <span class="bold">Builder :</span>
                                    <asp:Literal runat="server" ID="litBuilderName" Text="Undefined"></asp:Literal>

                                </p>
                            </div>
                        </div>
                        <div class="line line-dashed line-lg pull-in"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-1">
                                <%--<form runat="server">--%>
                                <asp:Button Text="Edit Information" runat="server" ID="btnEditSocietyProfile" class="btn btn-primary" OnClick="btnEditSocietyProfile_Click" />
                                <%--</form>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:PlaceHolder>
        </section>
    </form>
</asp:Content>





