<#import "navbar.ftl" as navbar>
<#macro header>
    <title>UpRoar</title>
<head>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/social.css">
    <link rel="stylesheet" href="css/events.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="js/script.js"></script>


</head>
<div class="heading">
    <header>
        <@navbar.navbar></@navbar.navbar>
        <div class = "HeadText">
        <div class="container">
            <div class="text-center">
                <h1 class="display-1"><strong>Find Events Near You!</strong></h1>
                <p class="lead"> With UpRoar you can explore the latest events and nights out hosted by the clubs and societies near you. Search now to get started!</p>
            </div>
            <br/>

            <div class="search-box">
                <div class="search-icon"><i class="fa fa-search search-icon"></i></div>
                <form action="" class="search-form">
                    <input type="text" placeholder="Search" id="search" autocomplete="off">
                </form>
                <svg class="search-border" version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px"
                     viewBox="0 0 671 111" style="enable-background:new 0 0 671 111;"
                     xml:space="preserve">
          <path class="border" d="M335.5,108.5h-280c-29.3,0-53-23.7-53-53v0c0-29.3,23.7-53,53-53h280"/>
                    <path class="border" d="M335.5,108.5h280c29.3,0,53-23.7,53-53v0c0-29.3-23.7-53-53-53h-280"/>
        </svg>
                <div class="go-icon"><i class="fa fa-arrow-right"></i></div>
            </div>

        </div>
        </div>
    </header>
    <body>



    </body>

</#macro>