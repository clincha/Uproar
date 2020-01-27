<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        <h1>My Tickets</h1>
        <#list tickets>
            <#items as ticket>
                Event: ${ticket.getEvent().getTitle()}
                Ticket Number: ${ticket.getId()}
            </#items>
        <#else>
            You have no tickets! <br>
            <a href="/event/all">All events</a><br>
        </#list>
        <a href="/">Home page</a>
    </#if>
</@layout.standardPage>