<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        <h1>My Societies</h1>
        <#list societies>
            <ul>
                <#items as society>
                    <li>
                        Society: ${society.getName()} [${society.getDescription()}]
                    </li>
                </#items>
            </ul>
            <a href="/society/create">Create a society</a><br>
        <#else>
            You have no societies! <br>
            <a href="/society/create">Create a society</a><br>
        </#list>
        <a href="/">Home page</a>
    </#if>
</@layout.standardPage>