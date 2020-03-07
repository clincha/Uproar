<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        <h1>Tickets Up for grabs</h1>
        <p> Tickets you may be interested being resold</p>
        <hr>

        <div class="container">
        <div class="card-colums">
                <div class="card" style="width: 25rem;"><a href="/event/1">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place society etc</p>
                    </div>
                </div>

                <div class="card" style="width: 25rem;"><a href="/event/1">
                        <img src="../image/Placeholder.jpg" class="card-img-top" alt="..."> </a>
                    <div class="card-body">
                        <h5 class="card-title">Event Example</h5>
                        <p class="card-text">Here we will need the bio of the event, can just have event name, time
                            place society etc</p>
                    </div>
                </div>
        </div>
        <button type="button">View More Tickets</button>

    </#if>
</@layout.standardPage>