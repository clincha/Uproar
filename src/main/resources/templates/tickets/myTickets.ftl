<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
        <script src="https://cdn.jsdelivr.net/jsbarcode/3.6.0/JsBarcode.all.min.js"></script>
        <script src="/js/barcode.js"></script>
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="/css/MyTicket.css">
    </#if>
    <#if section="content">
        <div class="container-fluid">
            <div class="row">
                <h1>My Tickets</h1>
            </div>
            <#list tickets>
                <div class="card-columns">
                    <#items as ticket>
                        <div class="card">
                            <br>
                            <img class="card-img-top" src="/file/${ticket.event.imageId}" alt="Event Photo">

                            <div class="card-body">
                                <div class="centre">
                                <h5 class="card-title">${ticket.event.title}</h5>
                                <input id="barcode-value" type="hidden" value="${ticket.barcode?c}">
                                <svg id="barcode"></svg>
                                    <br>
                                    <div class="moreinfo">
                                    <p class="card-text"><small class="text-muted">
                                <a href="/event/${ticket.event.id}">More information</a>
                                            <br>
                                            <a href="/event/sell/${ticket.event.id}">Sell Ticket</a>
                            </div></div></div></div>

                        </div>
                    </#items>
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