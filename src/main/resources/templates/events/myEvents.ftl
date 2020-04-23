<#import "../layout.ftl" as layout>
<#import "../navbar.ftl" as navbar>

<@layout.standardPage; section>
<#if section = "scripts">
<#-- javascript tags go in here -->
</#if>
<#if section = "styles">
    <link rel="stylesheet" href="/css/myPages.css">
    <link rel="stylesheet" href="/css/eventheader.css">
</#if>

<#if section="content">
<@navbar.navbar/><br><br><br><br>
<h2><i>
        <a href="/event/create">Create an event here</a></i>
</h2>
<#list events>
<div class="card-columns">
    <#items as event>
    <div class="card">
        <br>
        <img class="card-img-top" src="/file/${event.imageId}" alt="Event Photo">

        <div class="card-body">
            <div class="centre">
                <h5 class="card-title">${event.title}</h5>
                <br>
                <div class="moreinfo">
                    <form action="/event/${event.id}">
                        <button type="submit" class="btn btn-info">
                            <b>Event Information</b>
                        </button>
                    </form>

                    <form action="/event/${event.id}/scan">
                        <button id="${event.id}" type="submit"
                                class="btn btn-secondary sellTicketButton">
                            <b>Scan Tickets</b>
                        </button>
                    </form>
                </div>

            </div>
            </#items>
        </div>

        </#list>



        </#if>

        <a style="display:block" href="/">

        </a>
        </@layout.standardPage>
