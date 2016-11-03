
var $ = require('jquery') ;

var n = $("[data-trigger-resize]");
var a = n.data("triggerResize");

$.on("click", function() {
    setTimeout(function() {
        var $ = document.createEvent("UIEvents");
        $.initUIEvent("resize", !0, !1, e, 0),
            window.dispatchEvent($)
    }, a || 300)
})


