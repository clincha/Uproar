<#import "layout.ftl" as layout>

<@layout.layout; section>
    <#if section = "scripts">
        <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
        <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        <#-- This is where the main content of the page would go, this section sits inbetween the body tags -->
    </#if>
</@layout.layout>