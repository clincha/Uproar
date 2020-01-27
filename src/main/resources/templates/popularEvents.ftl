<#--This is the View that will contain the cards for the popular now -->
<#import "header.ftl" as header>
<#import "social.ftl" as social>
<#import "layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
        <script src="js/script.js"></script>
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/social.css">
        <link rel="stylesheet" href="css/events.css">
    </#if>
    <#if section = "content">
        <@header.header></@header.header>
        <div class="p1">
            Popular Now
        </div>
        <br>
        <div class="wrapper">
            <div class="card1">
                <div class="card" style="width: 25rem;"><a href="Placeholder">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place society etc</p>
                    </div>
                </div>
            </div>
            <div class="card2">
                <div class="card" style="width: 25rem;"><a href="Placeholder">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place society etc</p>
                    </div>
                </div>
            </div>
            <div class="card3">
                <div class="card" style="width: 25rem;"><a href="Placeholder">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place society etc</p>
                    </div>
                </div>
            </div>
            <div class="card4">
                <div class="card" style="width: 25rem;"><a href="Placeholder">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place society etc</p>
                    </div>
                </div>
            </div>
            <div class="card5">
                <div class="card" style="width: 25rem;"><a href="Placeholder">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place society etc</p>
                    </div>
                </div>
            </div>
            <div class="card6">
                <div class="card" style="width: 25rem;"><a href="Placeholder">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place society etc</p>
                    </div>
                </div>
            </div>
        </div>
        <a href="events">
            <div class="p2"><i>Explore more..</i></div>
        </a>
        <footer>
            <div class="socialposition">
                <br>
                <@social.social></@social.social>
            </div>
        </footer>
    </#if>
</@layout.standardPage>
