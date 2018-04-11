<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .tz-gallery {
            padding: 40px;
        }

            .tz-gallery .lightbox img {
                width: 100%;
                height: 200px;
                margin-bottom: 30px;
                transition: 0.2s ease-in-out;
                box-shadow: 0 2px 3px rgba(0,0,0,0.2);
            }


                .tz-gallery .lightbox img:hover {
                    transform: scale(1.05);
                    box-shadow: 0 8px 15px rgba(0,0,0,0.3);
                }

            .tz-gallery img {
                border-radius: 4px;
            }
    </style>
    <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
        <li class="active"><i class="fa fa-building"></i>Flat Details</li>
    </ul>


    <section class="panel panel-default">
        <header class="panel-heading font-bold">
            <div class="row">

                <!-- <h1 class="col-sm-11" style="font-size: 38pt;">Edit Profile</h1> -->
                <h1 class="col-sm-12" style="font-size: 20pt; margin-top: 5px;">Albums</h1>
            </div>
        </header>

        <div class="panel-body">
            <div class="tz-gallery">
                <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/park.jpg">
                    <img src="images/app.png" alt="Park">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/park.jpg">
                    <img src="images/avatar.jpg" alt="Park">
                </a>
            </div>
                <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/park.jpg">
                    <img src="images/app.png" alt="Park">
                </a>
            </div>
                <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/park.jpg">
                    <img src="images/app.png" alt="Park">
                </a>
            </div>
                <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="../images/park.jpg">
                    <img src="images/app.png" alt="Park">
                </a>
            </div>
            </div>
            
        </div>
    </section>
</asp:Content>

