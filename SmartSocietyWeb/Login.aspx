<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html class="bg-dark js no-touch no-android no-chrome firefox no-iemobile no-ie no-ie10 no-ios gr__" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Avishkar Apartments</title>
    <meta name="description"
        content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link rel="stylesheet" href="css/app.v2.css" type="text/css" />
    <link rel="stylesheet" href="css/font.css" type="text/css" cache="false" />
    <!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js" cache="false"></script>
    <script src="js/ie/respond.min.js" cache="false"></script>
    <script src="js/ie/excanvas.js" cache="false"></script> <![endif]-->
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
    </style>
    <section id="content" class="m-t-lg wrapper-md animated fadeInUp">
        <div class="container aside-xxl">
            <a class="navbar-brand block">Avishkar Apartments</a>
            <section class="panel panel-default bg-white m-t-lg">
                <header class="panel-heading text-center"><strong>Sign in</strong></header>
                <form runat="server" class="panel-body wrapper-lg">
                    <div class="form-group">
                        <label class="control-label">Username</label>
                        <asp:TextBox runat="server" ID="txtUsername"
                            placeholder="Username"
                            class="form-control input-lg" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Password</label>
                        <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"
                            placeholder="Password"
                            class="form-control input-lg" ></asp:TextBox>
                    </div>
                    <a href="ForgetPassword.aspx" class="pull-right m-t-xs">
                        <small>Forgot password?</small>
                    </a>
                    <asp:Button runat="server" ID="btnSubmit" cssclass="btn btn-primary" Text="Sign in" OnClick="btnSubmit_Click"></asp:Button>
                    
                    <br /><br />
                    <asp:Label runat="server" ID="lblAlert" CssClass="text-danger text-center"></asp:Label>
                </form>
            </section>
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
