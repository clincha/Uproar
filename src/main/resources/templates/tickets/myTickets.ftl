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
            <h1>My Tickets</h1>
        </div>
        <#list tickets>
            <div class="row">
            <#items as ticket>
                <div class="card">
                <br>
                <img class="card-img-top" src="/file/${ticket.event.imageId}" alt="Event Photo">

                <div class="card-body barcode-holder">
                    <div class="centre">
                        <h5 class="card-title">${ticket.event.title}</h5>
                        <input id="barcode-value" type="hidden" value="${ticket.barcode?c}">
                        <svg id="barcode"></svg>
                        <br>
                        <div class="moreinfo">
                            <button type="button" class="btn btn-info" href="/event/${ticket.event.id}">
                                   <b>More information</b>
                            </button>
                            <button type="button" class="btn btn-danger" href="/event/sell/${ticket.event.id}">
                                   <b> Sell Ticket</b>

                            </button>
                        </div>
                    </div>
                </div>
            </div>

<#--                </div>-->
            </#items>
            </div>

            </div>
        <#else>
            <br><br>
            <h2>
                You have no tickets! Take a look at the <a href="/event/all"><i>events available near you.</i></a>
            </h2>

        </#list>
        </div>
    </#if>
</@layout.standardPage>
<a style="display:block" href="/">
    <footer>
        <div class="upRoar">
            Uproar
        </div>
    </footer>