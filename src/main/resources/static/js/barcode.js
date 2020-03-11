$(".barcode-holder").each(function () {
    let barcodeText = $(this).find("#barcode-value")[0].value;
    console.log(barcodeText);
    $(this).find("#barcode").JsBarcode(barcodeText, {
        displayValue: true,
        height: 20
    })
});