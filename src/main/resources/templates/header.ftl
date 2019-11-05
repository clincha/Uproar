<#macro header>
    <title>UpRoar</title>
<head>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script>
        $(document).ready(function() {
            $(".menu-icon").on("click", function() {
                $("nav ul").toggleClass("showing");
            });
        });
        $(window).on("scroll", function() {
            if($(window).scrollTop()) {
                $('nav').addClass('black');
            }
            else {$('nav').removeClass('black');}})
    </script>
    <script>$(document).ready(function(){
            $("#search").focus(function() {
                $(".search-box").addClass("border-searching");
                $(".search-icon").addClass("si-rotate");
            });
            $("#search").blur(function() {
                $(".search-box").removeClass("border-searching");
                $(".search-icon").removeClass("si-rotate");
            });
            $("#search").keyup(function() {
                if($(this).val().length > 0) {
                    $(".go-icon").addClass("go-in");
                }
                else {
                    $(".go-icon").removeClass("go-in");
                }
            });
            $(".go-icon").click(function(){
                $(".search-form").submit();
            });
        });</script>
</head>
<div class="heading">
    <header>
        <nav>
            <div class="menu-icon">
                <i class="fa fa-bars fa-2x"></i>
            </div>
            <div class="logo">
                UpRoar
            </div>


            <div class="menu">
                <ul>
                    <li><a href="/user/tickets">My Tickets</a></li>
                    <li><a href="/user/events">My Events</a></li>
                    <li><a href="/user/societies">My Societies</a></li>
                    <li><a href="/user/settings">Settings</a></li>
                    <li><a href="/logout">Log Out</a></li>
                </ul>
            </div>
            <div class="container">
                <div class="search-box">
                    <div class="search-icon"><i class="fa fa-search search-icon"></i></div>
                    <form action="" class="search-form">
                        <input type="text" placeholder="Search" id="search" autocomplete="off">
                    </form>
                    <svg class="search-border" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:a="http://ns.adobe.com/AdobeSVGViewerExtensions/3.0/" x="0px" y="0px" viewBox="0 0 671 111" style="enable-background:new 0 0 671 111;"
                         xml:space="preserve">
          <path class="border" d="M335.5,108.5h-280c-29.3,0-53-23.7-53-53v0c0-29.3,23.7-53,53-53h280"/>
                        <path class="border" d="M335.5,108.5h280c29.3,0,53-23.7,53-53v0c0-29.3-23.7-53-53-53h-280"/>
        </svg>
                    <div class="go-icon"><i class="fa fa-arrow-right"></i></div>
                </div>


            </div>
        </nav>
    </header>
</div>


</#macro>