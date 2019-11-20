<#import "navbar.ftl" as navbar>
<#import "social.ftl" as social>
<html>
<title><#--${society.name}-->society Name</title>
<head>

     <#--not needed if using the nav bar--> <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/society.css">
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
<header>
   <@navbar.navbar></@navbar.navbar></header>

</head>
<body>

<div class="avatar">
    <img class="avt" src="../image/placeholder.jpg" alt="../image/BGblue.png">
</div>

    <div class="mainblock">
<br><br><br><br><br><br><br><br>
<h1 class="inblock">
    Society Name
</h1>
        <@social.social fbLink=SocialLinks.fbLink snapLink=SocialLinks.snaplink instaLink=SocialLinks.instaLink twitterLink=SocialLinks.twitterLink></@social.social>
        <h2>This is the bio about the society that they can then fill in themselves, we can give them several lines to do this so ...   </h2>
        <br>
        <h1>Events</h1>
        <div class="wrapper">

            <div class="card1">
                <div class="card" style="width: 25rem;"> <a href="Placeholder">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time place society etc</p>
                    </div>
                </div>
            </div>

            <div class="card2">
                <div class="card" style="width: 25rem;"> <a href="Placeholder">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time place society etc</p>
                    </div>
                </div>
            </div>

            <div class="card3">
                <div class="card" style="width: 25rem;"> <a href="Placeholder">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time place society etc</p>
                    </div>
                </div>
            </div>

            <div class="card4">
                <div class="card" style="width: 25rem;"> <a href="Placeholder">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time place society etc</p>
                    </div>
                </div>
            </div>

            <div class="card5">
                <div class="card" style="width: 25rem;"> <a href="Placeholder">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time place society etc</p>
                    </div>
                </div>
            </div>

            <div class="card6">
                <div class="card" style="width: 25rem;"> <a href="Placeholder">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time place society etc</p>
                    </div>
                </div>
            </div>


        </div>


</div>
</body>
</html>