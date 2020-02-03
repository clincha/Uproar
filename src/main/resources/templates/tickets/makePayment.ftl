<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        You have paid for ${ticket.getEvent().getTitle()}
        <form action="/" method="get">
            <button type="submit">Home page</button>
        </form>
    </#if>
</@layout.standardPage>