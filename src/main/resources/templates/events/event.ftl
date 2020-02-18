<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        <h1>${event.getName()}</h1>
        <p>${event.getLocation()}</p>
        <a href="/">Home page</a><br>
        <a href="/ticket/buy/${event.getId()}">Buy ticket</a>
    </#if>
</@layout.standardPage>