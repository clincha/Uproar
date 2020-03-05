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
                <#list events as event>
                    <div id="${event.id}" class="card">
                        <a href="events">
                            <img src="image/Placeholder.jpg" class="card-img-top" alt="Event image">
                        </a>
                        <div class="card-body">
                            <h5 class="card-title">${event.title}</h5>
                            <p class="card-text">${event.description}</p>
                        </div>
                    </div>
                </#list>
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
