<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="cv_proje.Default" %>

<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Cv Entity Proje</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Conjoint Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="/web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="/web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="/web/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <!-- //online-fonts -->
    <style>
        .message {
            margin-top: 10px;
            padding: 10px;
            border-radius: 5px;
            font-weight: bold;
        }

        .success {
            background-color: #dff0d8;
            color: #3c763d;
            border: 1px solid #3c763d;
        }

        .error {
            background-color: #f2dede;
            color: #a94442;
            border: 1px solid #a94442;
        }
    </style>
</head>
<body>
    <div class="sidenav text-center">
        <div class="side_top">
            <img src="/web/images/about.jpg" alt="news image" class="img-fluid navimg">
            <h1 class="top_hd mt-2"><a href="index.html">Altuğ ALTINTAŞ</a></h1>
            <p class="top_hdp mt-2">C^# Software developer & Enterprise Resources Planning Specialist </p>
        </div>
        <!-- header -->
        <header>
            <div class="nav-top">
                <nav class="mnu mx-auto">
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop">
                    <ul class="menu">
                        <li class="active"><a href="#home" class="scroll">Ana Sayfa</a></li>
                        <li class="mt-sm-3"><a href="#about" class="scroll">Eğitim hayatım</a></li>
                        <li class="mt-sm-3"><a href="#services" class="scroll">Yeteneklerim</a></li>
                        <li class="mt-sm-3"><a href="#news" class="scroll">Deneyimlerim</a></li>
                        <li class="mt-sm-3"><a href="#contact" class="scroll">İşetişim</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- //header -->
    </div>
    <div class="main">
        <div class="banner-text-w3ls" id="home">
            <div class="container">
                <div class="mx-auto text-center">
                    <h3>Yazım Cv Yetenek Sitesi</h3>
                    <p class="banp mx-auto mt-3">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <%# Eval("bilgiler")%>
                            </ItemTemplate>
                        </asp:Repeater>
                    </p>
                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#about" role="button">Hakkımda</a>
                </div>
            </div>
        </div>
        <!-- about -->
        <section class="slide-wrapper" id="about">
            <h2 class="w3_head mb-4">Eğitim hayatım </h2>
            <p class="iner mt-md-5">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <%#Eval("egitim") %>
                    </ItemTemplate>
                </asp:Repeater>
            </p>
        </section>
        <!-- //about -->
        <!-- services -->
        <section class="services" id="services">
            <div class="container">
                <h3 class="w3_head mb-4 text-left">Yetenekler</h3>
                <ul class="list-unstyled mt-5">
                    <li>
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <div class="row">
                                    <div class="col-2 ic-lft">
                                        <span class="fa fa-code"></span>
                                    </div>
                                    <div class="col-10">
                                        <h6><%#Eval("yetenek") %> </h6>
                                        <br />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </li>

                </ul>
            </div>
        </section>
        <!-- //services -->
        <!-- news -->
        <div class="news" id="news">
            <h3 class="w3_head mb-4 text-left">Deneyelimlerim</h3>
            <p class="iner mt-md-5 text-left">
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <%#Eval("isdeneyim") %>
                    </ItemTemplate>
                </asp:Repeater>
            </p>


        </div>
        <!-- //news -->
        <!-- contact -->
        <section class="wedo" id="contact">
            <h3 class="w3_head mb-4 text-left">İletişim</h3>

            <div class="contact_grid_right mt-5 mx-auto text-left">
                <form action="#" method="post" runat="server">
                    <div class="row contact_top">
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Adınız"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Konu"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Mesajınız" TextMode="MultiLine" Height="50"></asp:TextBox>
                    <div id="LabelMessage" class="message" runat="server"></div>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Gönder" OnClick="Button1_Click"/>
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-warning" Text="Vazgeç" OnClick="Button2_Click" />
                    <div class="clearfix"></div>
                </form>
            </div>
            <div class="cpy-right text-center">
                <p>
                    © 2018 Conjoint. All rights reserved | Design by
					<a href="http://w3layouts.com">W3layouts.</a>
                </p>
            </div>
        </section>
        <!-- //contact -->
    </div>

</body>
</html>
