<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        This hjas enlsnflskdfn
        <ul>
            <#list events as event>
                <li><a href="/event/${event.getId()}">${event.getTitle()}</a></li>
            </#list>
        </ul>

        <a href="/event/create">Create an event here</a>
    </#if>
</@layout.standardPage>