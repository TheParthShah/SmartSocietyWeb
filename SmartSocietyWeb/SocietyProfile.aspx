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
        <li class="active"><i class="fa fa-building"></i> Society Profile</li>
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

        <asp:PlaceHolder runat="server" ID="EditSocietyProfile">
            <div class="panel-body">
                <form class="form-horizontal" method="get" runat="server">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-10">
                            <asp:TextBox runat="server" ID="txtSocietyName" class="form-control" placeholder="Society Name"> </asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Address</label>
                        <div class="col-sm-10">
                            <asp:TextBox runat="server" ID="txtAddress" TextMode="MultiLine" class="form-control" rows="5" placeholder="Society Address"></asp:TextBox>
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
                            <asp:TextBox runat="server" ID="txtBuilder"  class="form-control" placeholder="Builder/Builder-Group name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                            <asp:TextBox runat="server" ID="txtEmail"  type="email" class="form-control" placeholder="Society Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Registration No</label>
                        <div class="col-sm-10">
                            <asp:TextBox runat="server" ID="txtRegistrationNo"  class="form-control" placeholder="Registration Number of society"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Campus Area</label>
                        <div class="col-sm-10">
                            <asp:TextBox runat="server" ID="txtCampusArea"  class="form-control" placeholder="Campus Area(In Sq.Ft)"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Society Type</label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="txtSocietyType" runat="server" class="form-control">
                                <asp:ListItem Value="Government"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="line line-dashed line-lg pull-in"></div>
                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-2">
                            <button type="submit" class="btn btn-default">Cancel</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </form>
            </div>
        </asp:PlaceHolder>

        <asp:PlaceHolder runat="server" ID="SocietyProfileInfo">
            <div class="panel-body">
                <div class="form-horizontal society-info">
                    <div class="row">
                        <div class="col-xs-6">

                            <p class="bold">
                                1 Infinite Loop
                            <br>
                                95014 Cuperino, CA<br>
                                United States - 395017
                            </p>
                            <p>
                                <span class="bold">Telephone :</span> 800-692-7753<br>
                                <span class="bold">Fax :</span> 800-692-7753<br>
                                <span class="bold">Email :</span> xyz@gmail.com
                            <br>
                            </p>


                        </div>
                        <div class="col-xs-6">
                            <p>

                                <span class="bold">Registration No :</span> 12589631
                            <br />
                                <span class="bold">Campus Area :</span> 2000 sqKm<br />
                                <span class="bold">Society Type :</span> Government
                            <br />
                                <span class="bold">Secretary :</span> Mr Xyz
                            <br>
                                <span class="bold">Builder :</span> Mr abc
                            
                            </p>
                        </div>
                    </div>
                    <div class="line line-dashed line-lg pull-in"></div>
                    <div class="form-group">
                        <div class="col-sm-4 col-sm-offset-1">
                            <form runat="server">
                                <asp:Button text="Edit Information" runat="server" ID="btnEditSocietyProfile" class="btn btn-primary" OnClick="btnEditSocietyProfile_Click" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </asp:PlaceHolder>
    </section>

</asp:Content>





