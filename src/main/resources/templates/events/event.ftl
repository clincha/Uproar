<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        <h1>${event.getTitle()}</h1>
        <p>${event.getSociety()} - ${event.getDescription()}</p>
    </#if>
</@layout.standardPage>