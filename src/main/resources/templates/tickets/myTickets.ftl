<#import "../layout.ftl" as layout>
<div class="page>"
<@layout.standardPage; section>
    <#if section = "scripts">
        <script src="https://cdn.jsdelivr.net/jsbarcode/3.6.0/JsBarcode.all.min.js"></script>
        <script>
            JsBarcode(".barcode").init();
        </script>
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="/css/MyTicket.css">
    </#if>
    <#if section="content">
        <h1>My Tickets</h1>
        <#list tickets>
            <ul>
                <#items as ticket>
                    <li>
                        <div class="card">
                            <img src="image/BGblue.png" alt="eventphoto" style="width:100%">
                            <h1>${ticket.event.title}</h1>
                            <svg class="barcode"
                                 jsbarcode-format="upc"
                                 jsbarcode-value="${ticket.barcode?c}" <#-- this is where the barcode for ticket goes is ID? [${ticket.getId()}] -->
                                 jsbarcode-textmargin="0"
                                 jsbarcode-fontoptions="bold">
                            </svg>
                            <a href="/event/${ticket.event.id}">More information</a>
                        </div>
                        Event: ${ticket.event.title} [${ticket.id}]
                    </li>
                </#items>
            </ul>
        <#else>

            <br>
            <h2> You have no tickets! Take a look at the <a href="/event/all"> <i>events available near
                        you. </i></a><br>
                <img class='whoops' src="../image/BG.jpg" alt="BG">
            </h2>

            <div class="image"></div>
        </#list>
        <footer>
            <a href="/">Uproar</a>
        </footer>
    </#if>
</@layout.standardPage>
