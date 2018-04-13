<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>

<html class="bg-dark js no-touch no-android no-chrome firefox no-iemobile no-ie no-ie10 no-ios gr__" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Avishkar Apartments</title>
    <meta name="description"
        content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link rel="stylesheet" href="css/app.v2.css" type="text/css" />
    <link rel="stylesheet" href="css/font.css" type="text/css" cache="false" />
</head>
<body>
    <style>
        .block {
            font-family: 'Century Gothic';
            font-size: 34px;
        }

        .m-t-lg {
            margin-top: 50px;
        }

        .m-t-xs {
            padding-right: 10px;
        }
    </style>

    <section id="content" class="m-t-lg wrapper-md animated fadeInUp">
        <div class="container aside-xxl">
            <form runat="server">
                <a class="navbar-brand block">Avishkar Apartments</a>


                

                <asp:PlaceHolder runat="server" ID="PanelResetPassword">
                    <section class="panel panel-default bg-white m-t-lg">
                        <header class="panel-heading text-center"><strong>Reset Password</strong></header>
                        <div class="panel-body wrapper-lg">
                            <div class="form-group">
                                <label class="control-label">Enter old Password</label>
                                <asp:TextBox runat="server" ID="TextBox2"
                                    placeholder="" TextMode="Password"
                                    class="form-control input-lg"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label">New Password</label>
                                <asp:TextBox runat="server" ID="txtNewPassword"
                                    TextMode="Password"
                                    class="form-control input-lg"> </asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Confirm Password</label>
                                <asp:TextBox runat="server" ID="txtConfirmPassword"
                                    TextMode="Password"
                                    class="form-control input-lg"></asp:TextBox>
                            </div>
                            <%--<div class="checkbox">
                        <label>
                            <input type="checkbox">
                            Keep me logged in </label>
                    </div>--%>
                            <asp:Button ID="btnResetPassword" runat="server" Text="Submit" class="btn btn-primary" />

                            <%--<div class="line line-dashed"></div>
                    <a href="#" class="btn btn-facebook btn-block m-b-sm"><i class="fa fa-facebook pull-left"></i>Sign in
                    with Facebook</a> <a href="#" class="btn btn-twitter btn-block"><i
                        class="fa fa-twitter pull-left"></i>Sign in with Twitter</a>

                    <div class="line line-dashed"></div>
                    <p class="text-muted text-center">
                        <small>Do not have an account?</small>
                    </p>
                    <a href="signup.html" class="btn btn-default btn-block">Create an account</a>--%>
                        </div>

                    </section>
                </asp:PlaceHolder>
            </form>
        </div>
    </section>
    <!-- footer -->
    <footer id="footer">
        <div class="text-center padder">
            <p>
                <small>Sharp Solvers
                    &copy; 2018</small>
            </p>
        </div>
    </footer>
    <!-- / footer -->
    <script src="js/app.v2.js"></script>
    <!-- Bootstrap -->
    <!-- App -->
</body>
</html>
