<#import "../navbar.ftl" as navbar>
<#import "social.ftl" as social>
<#import "../layout.ftl" as layout>

<@layout.standardPage title="Society Name"; section>
    <#if section = "scripts">
        <!-- Scripts go here -->
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="/css/header.css" xmlns="http://www.w3.org/1999/html">
        <link rel="stylesheet" href="/css/society.css">
        <link rel="stylesheet" href="/css/social.css">
        <link rel="stylesheet" href="/css/events.css">
    </#if>
    <#if section="content">
        <header>
            <@navbar.navbar/>
        </header>
        <div class="avatar">
            <img class="avt" src="/image/rugby.png" alt="Society Picture">
        </div>
        <div class="mainblock">
            <br><br><br><br><br><br><br><br>
            <h1 class="inblock">
                UKC Men's Rugby
            </h1>
            <h2>UKC Men's Rugby are the Rugby Union Club at the University of Kent in Canterbury.

                UKC Men’s Rugby is comprised of 5 Squads- 4 competitive squads that compete in BUCS Leagues and one development squad that caters for those who are beginners to the game. We train three times a week (Tuesday, Friday and Sunday), with a match every Wednesday for the BUCS teams. We are the biggest sports society on Kent’s campus boasting in excess of 130 members. The club has a thriving social scene, with the club members all meeting together at least once a week for socials, often more. The UKC Men's Rugby society prides itself on the awareness and funding we raise for charities throughout the year. We have consistently been the society that has raised the most money for the Movember Foundation over the past few years, raising in excess of £5000 in 2017. We wholly accept anyone into our club and encourage diversity- rugby is a global sport that is played throughout the world but if anyone hasn't encountered the sport we see it a necessary challenge to help spread the values of the game we all love.

                We are a club that prides itself on being enjoyable, tight-knit, and a club that is bigger than the sum of its parts. These values are reflected by the accolade of Club of the Year 2018/19, presented by Kent Sport.
            </h2>
        <br>
        <br>
        <div class="center">
        <div class="container">
        <div class="row">
            <div class="col-sm">
                <img class="avt2" src="/image/photo1.png" alt="Society Picture"><br>
                <b>President</b>
            </div>

            <div class="col-sm">
                <img class="avt2" src="/image/photo2.png" alt="Society Picture"><br>
                <b>  Vice President</b>
            </div>
            <div class="col-sm">
                <img class="avt2" src="/image/photo3.png" alt="Society Picture"><br>
                <b>Social Secretary</b>
            </div></div></div><hr>
            <br>
            <div class="alert alert-danger" role="alert">
              <b>Remember to Pay your Club dues <a href="https://kentunion.co.uk/activities/rugby-mens"> here!</a></b>
            </div>
            <br>
            <hr>
        <div class="container">
            <div class="row">
                <div class="col-sm">
                        <h1>Events</h1>

                <#list events as event>

                    <@layout.card event.title, event.description, "/event/" + event.id, "more info!"/>

                </#list>
                </div>
                <div class="col-sm">
                <h1>Minutes</h1>
                    <ul>
                        <li>03/03/2020</li>
                        <li>28/02/2020</li>
                        <li>21/02/2020</li>
                    </ul>
                </div>
                <div class="col-sm">
                <h1>Social Posts</h1>
                </div></div></div>

            </div>

        </div>
    </#if>
</@layout.standardPage>