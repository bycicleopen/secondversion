$(document).ready(function() {
    alert($('.phone-wrap>a').val());
    var newValue = $mylabel.text().replace('-', '');
    $mylabel.text( newValue );
});