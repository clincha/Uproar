<#import "../layout.ftl" as layout>
<h1>My Events</h1>
<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
     <link rel="stylesheet" href="/css/myPages.css">
    </#if>

    <#if section="content">
        test

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
                                <p class="card-text"><small class="text-muted">
                                        <a href="/event/${event.id}">More Information</a><br>
                                        <a href="/event/scan/${event.id}">Book tickets In</a><br>

                            </div></div></div>
                               </div>
            </#items>
            </div>

            </#list>


        <h2><i>
         <a href="/event/create">Create an event here</a></i>
        </h2>
    </#if>

<a style="display:block" href="/">
<footer>
    <div class="uproar">
        Uproar
    </div>
</footer>
</a>
</@layout.standardPage>
