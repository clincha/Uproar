$(".barcode-holder").each(function () {
    let barcodeText = $(this).find("#barcode-value")[0].value;
    $(this).find("#barcode").JsBarcode(barcodeText, {
        displayValue: true,
        height: 20
    })
});