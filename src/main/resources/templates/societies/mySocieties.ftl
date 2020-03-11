<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
        <script src="https://cdn.jsdelivr.net/jsbarcode/3.6.0/JsBarcode.all.min.js"></script>
        <script src="/js/barcode.js"></script>
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="/css/myPages.css">
    </#if>
    <#if section="content">
        <div class="container-fluid">
        <div class="row">
            <h1>My Societies</h1>
        </div>

            <br><br>
            <h2>
                You're not a member of any societies.<br>
                <a href="/search"><i>Search for a society.</i></a><br>
                <a href="/event/all"><i>Or Create your own!</i></a>
            </h2>


        </div>
    </#if>
</@layout.standardPage>
<a style="display:block" href="/">
    <footer>
        <div class="upRoar">
            Uproar
        </div>
    </footer>