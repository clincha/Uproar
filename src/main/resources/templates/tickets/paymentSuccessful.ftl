
<#import "../layout.ftl" as layout>
<#import "../navbar.ftl" as navbar>
<meta http-equiv="refresh" content="5;/" />
<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="/css/myPages.css">
        <link rel="stylesheet" href="/css/eventheader.css">
        <link rel="stylesheet" href="/css/successfulPayment.css">
    </#if>
    <@navbar.navbar/><br><br><br><br>
    <#if section="content">
    <#-- This is where the main content of the page would go, this section sits inbetween the body tags -->
        <div class="success">
            <img class="successtick" src="/image/tick.png" alt="success Photo"><BR>
            <h1>Payment Successful</h1>
        </div>
    </#if>
</@layout.standardPage>