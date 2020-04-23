$(function () {
    document.getElementById("validTicket").hidden = true;
    document.getElementById("invalidTicket").hidden = true;

    let liveStreamConfig = {
        inputStream: {
            type: "LiveStream",
            constraints: {
                width: {min: 640},
                height: {min: 480},
                aspectRatio: {min: 1, max: 100},
                facingMode: "environment"
            }
        },
        locator: {
            patchSize: "medium",
            halfSample: true
        },
        numOfWorkers: (navigator.hardwareConcurrency ? navigator.hardwareConcurrency : 4),
        decoder: {
            "readers": [
                {"format": "ean_reader", "config": {}}
            ]
        },
        locate: true
    };
    let fileConfig = $.extend(
        {},
        liveStreamConfig,
        {
            inputStream: {
                size: 800
            }
        }
    );

    $('#livestream_scanner').on('shown.bs.modal', function (e) {
        Quagga.init(
            liveStreamConfig,
            function (err) {
                if (err) {
                    $('#livestream_scanner .modal-body .error').html('<div class="alert alert-danger"><strong><i class="fa fa-exclamation-triangle"></i> ' + err.name + '</strong>: ' + err.message + '</div>');
                    Quagga.stop();
                    return;
                }
                Quagga.start();
            }
        );
    });

    Quagga.onProcessed(function (result) {
        let drawingCtx = Quagga.canvas.ctx.overlay,
            drawingCanvas = Quagga.canvas.dom.overlay;

        if (result) {
            if (result.boxes) {
                drawingCtx.clearRect(0, 0, parseInt(drawingCanvas.getAttribute("width")), parseInt(drawingCanvas.getAttribute("height")));
                result.boxes.filter(function (box) {
                    return box !== result.box;
                }).forEach(function (box) {
                    Quagga.ImageDebug.drawPath(box, {x: 0, y: 1}, drawingCtx, {color: "green", lineWidth: 2});
                });
            }

            if (result.box) {
                Quagga.ImageDebug.drawPath(result.box, {x: 0, y: 1}, drawingCtx, {color: "#52b1e6", lineWidth: 2});
            }

            if (result.codeResult && result.codeResult.code) {
                Quagga.ImageDebug.drawPath(result.line, {x: 'x', y: 'y'}, drawingCtx, {color: 'red', lineWidth: 3});
            }
        }
    });

    // Once a barcode had been read successfully, stop quagga and
    // close the modal after a second to let the user notice where
    // the barcode had actually been found.
    Quagga.onDetected(function (result) {
        if (result.codeResult.code) {
            let barcodeValue = result.codeResult.code;
            let eventId = document.getElementById("eventId").value;
            $.ajax({
                url: "/ticket/valid",
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                data: JSON.stringify({
                    event_id: eventId,
                    barcode: barcodeValue
                }),
                type: 'POST',
                success: function (responseData) {
                    console.log(responseData);
                    if (responseData === true) {
                        document.getElementById("validTicket").hidden = false;
                        document.getElementById("invalidTicket").hidden = true;
                    } else {
                        document.getElementById("validTicket").hidden = true;
                        document.getElementById("invalidTicket").hidden = false;
                    }
                }
            });
            Quagga.stop();
            setTimeout(function () {
                $('#livestream_scanner').modal('hide');
            }, 1000);
        }
    });

    // Stop quagga in any case, when the modal is closed
    $('#livestream_scanner').on('hide.bs.modal', function () {
        if (Quagga) {
            Quagga.stop();
        }
    });

    // Call Quagga.decodeSingle() for every file selected in the
    // file input
    $("#livestream_scanner input:file").on("change", function (e) {
        if (e.target.files && e.target.files.length) {
            Quagga.decodeSingle($.extend({}, fileConfig, {src: URL.createObjectURL(e.target.files[0])}), function (result) {
                alert(result.codeResult.code);
            });
        }
    });
});