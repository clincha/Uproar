<#--This is the View that will contain the cards for the popular now -->
<#import "header.ftl" as header>
<#import "societies/social.ftl" as social>
<#import "layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
        <!-- Scripts go here -->
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/social.css">
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
                    <div id="event-${event.id}" class="card">
                        <a href="/event/${event.id}">
                            <img src="/file/${event.imageId}" class="card-img-top" alt="Event image">
                        </a>
                        <div class="card-body">
                            <h5 class="card-title">${event.title}</h5>
                            <p class="card-text">${event.description}</p>
                        </div>
                    </div>
                </#list>
            </div>

            <div class="float-right">
                <a href="/event/all">Explore more...</a>
            </div>
        </div>
    </#if>
</@layout.standardPage>
