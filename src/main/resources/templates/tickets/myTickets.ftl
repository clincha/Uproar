<#import "../layout.ftl" as layout>
<#import "../navbar.ftl" as navbar>

<@layout.standardPage; section>
    <#if section = "scripts">
        <script src="https://cdn.jsdelivr.net/jsbarcode/3.6.0/JsBarcode.all.min.js"></script>
        <script src="/js/barcode.js"></script>
        <script src="/js/sellTicket.js"></script>
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="/css/myPages.css">
        <link rel="stylesheet" href="/css/eventheader.css">

    </#if>
    <@navbar.navbar/><br><br><br><br>
    <#if section="content">

        <div  class ="article">

        <div class="container-fluid">
        <div class="row">
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
                                    <button id="${ticket.id}" onclick="onclickSellButton(this.id)" type="button"
                                            class="btn btn-danger sellTicketButton"
                                            href="/event/sell/${ticket.event.id}">
                                        <b>Sell Ticket</b>
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
