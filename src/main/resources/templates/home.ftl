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
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <div class="h1">
                        Popular Now
                    </div>
                </div>
            </div>

            <div class="card-columns">
                <div class="card">
                    <a href="events">
                        <img src="image/Placeholder.jpg" class="card-img-top" alt="placeholder">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place
                            society etc</p>
                    </div>
                </div>

                <div class="card">
                    <a href="events">
                        <img src="image/Placeholder.jpg" class="card-img-top" alt="placeholder">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place
                            society etc</p>
                    </div>
                </div>

                <div class="card">
                    <a href="events">
                        <img src="image/Placeholder.jpg" class="card-img-top" alt="placeholder">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place
                            society etc</p>
                    </div>
                </div>

                <div class="card">
                    <a href="events">
                        <img src="image/Placeholder.jpg" class="card-img-top" alt="placeholder">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place
                            society etc</p>
                    </div>
                </div>

                <div class="card">
                    <a href="events">
                        <img src="image/Placeholder.jpg" class="card-img-top" alt="placeholder">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place
                            society etc</p>
                    </div>
                </div>

                <div class="card">
                    <a href="events">
                        <img src="image/Placeholder.jpg" class="card-img-top" alt="placeholder">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place
                            society etc</p>
                    </div>
                </div>

                <div class="card">
                    <a href="events">
                        <img src="image/Placeholder.jpg" class="card-img-top" alt="placeholder">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place
                            society etc</p>
                    </div>
                </div>

                <div class="card">
                    <a href="events">
                        <img src="image/Placeholder.jpg" class="card-img-top" alt="placeholder">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place
                            society etc</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <a href="events">
                        <div class="exploreMore"><i>Explore more...</i></div>
                    </a>
                </div>
            </div>
        </div>
        <footer>
            <div class="socialposition">
                <br>
                <@social.social></@social.social>
            </div>
        </footer>
    </#if>
</@layout.standardPage>
