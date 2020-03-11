<#import "layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
        <script type="text/javascript" src="/js/barcodeScanner.js"></script>
        <script src="https://cdn.rawgit.com/serratus/quaggaJS/0420d5e0/dist/quagga.min.js"></script>
    </#if>
    <#if section = "styles">
        <style>
            #interactive.viewport {
                position: relative;
                width: 100%;
                height: auto;
                overflow: hidden;
                text-align: center;
            }

            #interactive.viewport > canvas, #interactive.viewport > video {
                max-width: 100%;
                width: 100%;
            }

            canvas.drawing, canvas.drawingBuffer {
                position: absolute;
                left: 0;
                top: 0;
            }
        </style>
    </#if>
    <#if section="content">
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
        <input id="eventId" type="hidden" value="${event.getId()}">
        <h1 id="validTicket" hidden>SUCCESS!</h1>
        <h1 id="invalidTicket" hidden>FAILURE!</h1>
    </#if>
</@layout.standardPage>
