<#import "layout.ftl" as layout>
<#import "navbar.ftl" as navbar>

<@layout.standardPage; section>
    <#if section = "scripts">
        <script type="text/javascript" src="/js/barcodeScanner.js"></script>
        <script src="https://cdn.rawgit.com/serratus/quaggaJS/0420d5e0/dist/quagga.min.js"></script>
    </#if>
    <#if section = "styles">
        <link rel="stylesheet" href="/css/myPages.css">
        <link rel="stylesheet" href="/css/eventheader.css">
        <link rel="stylesheet" href="/css/bcScanner.css">

    </#if>
    <@navbar.navbar/><br><br><br><br>
    <#if section="content">
        <div class="bcInput">
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <input id="scanner_input" class="form-control" placeholder="Click the button to scan an EAN..."
                           type="text"/>
                    <span class="input-group-btn">
				<button class="btn btn-default" type="button" data-toggle="modal" data-target="#livestream_scanner">
					<i class="fa fa-barcode"></i>
				</button>
			</span>
                </div>
            </div>
        </div>
        <div class="modal" id="livestream_scanner">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">Barcode Scanner</h4>
                    </div>
                    <div class="modal-body" style="position: static">
                        <div id="interactive" class="viewport"></div>
                        <div class="error"></div>
                    </div>
                    <div class="modal-footer">
                        <label class="btn btn-default pull-left">
                            <i class="fa fa-camera"></i> Use camera app
                            <input type="file" accept="image/*;capture=camera" capture="camera" class="hidden"/>
                        </label>
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <input id="eventId" type="hidden" value="${event.getId()}">
        <h1 id="validTicket" hidden>SUCCESS!</h1>
        <h1 id="invalidTicket" hidden>FAILURE!</h1>
    </#if>
</@layout.standardPage>
