<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        <h1>All Events</h1>
        <#list events>
            <ul>
                <#items as event>
                    <li><a href="/event/${event.getId()}">${event.getTitle()}</a></li>
                </#items>
            </ul>
        <#else>
            There aren't any events! <br>
            <a href="/event/create">Create an event here</a>
        </#list>
    </#if>
</@layout.standardPage>