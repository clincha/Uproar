<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        <h1>Buy ticket</h1>
        You are buying a ticket for the event: ${event.getTitle()}

        Your email is ${user.getEmail()}
        <form action="/ticket/buy/${event.getId()}" method="post">
            <button type="submit">Purchase</button>
        </form>
    </#if>
</@layout.standardPage>