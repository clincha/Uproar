<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        You are buying a ticket for ${event.getTitle()}
        <form action="/ticket/buy/${event.getId()}" method="post">
            <button type="submit">Purchase</button>
        </form>
    </#if>
</@layout.standardPage>