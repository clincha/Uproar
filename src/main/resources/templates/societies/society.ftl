<#import "../navbar.ftl" as navbar>
<#import "social.ftl" as social>
<#import "../layout.ftl" as layout>

<@layout.standardPage title="Society Name"; section>
    <#if section = "scripts">
        <script src="js/script.js"></script>
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="/css/header.css">
        <link rel="stylesheet" href="/css/society.css">
        <link rel="stylesheet" href="/css/social.css">
        <link rel="stylesheet" href="/css/events.css">
    </#if>
    <#if section="content">
        <header>
            <@navbar.navbar/>
        </header>
        <div class="avatar">
            <img class="avt" src="/image/Placeholder.jpg" alt="Society Picture">
        </div>
        <div class="mainblock">
            <br><br><br><br><br><br><br><br>
            <h1 class="inblock">
                Society Name
            </h1>
            <#--            <@social.social fbLink=SocialLinks.fbLink snapLink=SocialLinks.snaplink instaLink=SocialLinks.instaLink twitterLink=SocialLinks.twitterLink></@social.social>-->
            <h2>This is the bio about the society that they can then fill in themselves, we can give them several lines
                to do this so ... </h2>
            <br>
            <h1>Events</h1>
            <div class="wrapper">
                <div class="card1">
                    <div class="card" style="width: 25rem;"><a href="Placeholder">
                            <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                        <div class="card-body">
                            <h5 class="card-title">Event Example</h5>
                            <p class="card-text">Here we will need the bio of the event, can just have event name, time
                                place
                                society etc</p>
                        </div>
                    </div>
                </div>
                <div class="card2">
                    <div class="card" style="width: 25rem;"><a href="Placeholder">
                            <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                        <div class="card-body">
                            <h5 class="card-title">Event Example</h5>
                            <p class="card-text">Here we will need the bio of the event, can just have event name, time
                                place
                                society etc</p>
                        </div>
                    </div>
                </div>
                <div class="card3">
                    <div class="card" style="width: 25rem;"><a href="Placeholder">
                            <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                        <div class="card-body">
                            <h5 class="card-title">Event Example</h5>
                            <p class="card-text">Here we will need the bio of the event, can just have event name, time
                                place
                                society etc</p>
                        </div>
                    </div>
                </div>
                <div class="card4">
                    <div class="card" style="width: 25rem;"><a href="Placeholder">
                            <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                        <div class="card-body">
                            <h5 class="card-title">Event Example</h5>
                            <p class="card-text">Here we will need the bio of the event, can just have event name, time
                                place
                                society etc</p>
                        </div>
                    </div>
                </div>
                <div class="card5">
                    <div class="card" style="width: 25rem;"><a href="Placeholder">
                            <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                        <div class="card-body">
                            <h5 class="card-title">Event Example</h5>
                            <p class="card-text">Here we will need the bio of the event, can just have event name, time
                                place
                                society etc</p>
                        </div>
                    </div>
                </div>
                <div class="card6">
                    <div class="card" style="width: 25rem;"><a href="Placeholder">
                            <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                        <div class="card-body">
                            <h5 class="card-title">Event Example</h5>
                            <p class="card-text">Here we will need the bio of the event, can just have event name, time
                                place
                                society etc</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.standardPage>