<#import "../navbar.ftl" as navbar>
<#import "social.ftl" as social>
<#import "../layout.ftl" as layout>

<@layout.standardPage title="Society Name"; section>
    <#if section = "scripts">
        <!-- Scripts go here -->
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/society.css">
        <link rel="stylesheet" href="css/social.css">
        <link rel="stylesheet" href="css/events.css">
    </#if>
    <#if section="content">
        <header>
            <@navbar.navbar/>
        </header>
        <div class="avatar">
            <img class="avt" src="image/Placeholder.jpg" alt="Society Picture">
        </div>
        <div class="mainblock">
            <br><br><br><br><br><br><br><br>
            <h1 class="inblock">
                Society Name
            </h1>
            <@social.social fbLink=SocialLinks.fbLink snapLink=SocialLinks.snapLink instaLink=SocialLinks.instaLink twitterLink=SocialLinks.twitterLink></@social.social>
            <h2>This is the bio about the society that they can then fill in themselves, we can give them several lines
                to do this so ... </h2>
            <br>

            <div class="container-fluid">
                <div class="row">
                    <div class="col">
                        <h1>Events</h1>
                    </div>
                </div>
                <#list events as event>
                    <@layout.card event.title, event.description, "/event/" + event.id, "more info!"/>
                </#list>
            </div>
        </div>
    </#if>
</@layout.standardPage>