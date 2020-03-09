<#import "../layout.ftl" as layout>
<@layout.standardPage; section>
    <#if section = "scripts">
        <script src="https://cdn.jsdelivr.net/jsbarcode/3.6.0/JsBarcode.all.min.js"></script>
        <script>JsBarcode(".barcode").init();</script>
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
                            <img class="card-img-top" src="/file/${ticket.event.imageId}" alt="Event Photo">
                            <div class="card-body">
                                <h5 class="card-title">${ticket.event.title}</h5>
                                <div class="barcode-contianer">
                                    <svg class="barcode"
                                         jsbarcode-format="CODE128"
                                         jsbarcode-value="${ticket.barcode?c}"
                                         jsbarcode-textmargin="0"
                                         jsbarcode-fontoptions="bold">
                                    </svg>
                                </div>
                                <a href="/event/${ticket.event.id}">More information</a>
                            </div>

                        </div>
                    </#items>
                </div>
            <#else>
                <h2> You have no tickets! Take a look at the <a href="/event/all"> <i>events available near
                            you. </i></a><br>
                    <img class='whoops' src="../image/BG.jpg" alt="BG">
                </h2>
            </#list>
        </div>
    </#if>
</@layout.standardPage>
