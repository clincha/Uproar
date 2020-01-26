This is the event page, it should show off the event. It needs a "buy ticket button"

<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        Event ${event.getId()}
    </#if>
</@layout.standardPage>