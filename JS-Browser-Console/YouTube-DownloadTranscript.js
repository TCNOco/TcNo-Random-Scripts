// ==UserScript==
// @name         Download Transcript button for YT
// @namespace    jwang0614.top/script
// @version      0.1
// @description  Download Transcript button for YT
// @author       TCNO
// @match        https://www.youtube.com/watch?v=*
// @require      http://code.jquery.com/jquery-1.11.1.min.js
// @grant        none
// ==/UserScript==

// This is in no way optimized or user friendly. This is just a test for something I temporarily needed.

var download_script = `
function download(data, filename, type) {
    var file = new Blob([data], {type: type, charset: "utf-8"});
    if (window.navigator.msSaveOrOpenBlob) { // IE10+
        window.navigator.msSaveOrOpenBlob(file, filename);
    }
    else { // Others
        var a = document.createElement("a"),
                url = URL.createObjectURL(file);
        a.href = url;
        a.download = filename;
        document.body.appendChild(a);
        a.click();
        setTimeout(function() {
            document.body.removeChild(a);
            window.URL.revokeObjectURL(url);
        }, 0);
    }
}
`;

$(document).ready(function(){
    setTimeout(function () {
        $("ytd-menu-renderer.style-scope.ytd-video-primary-info-renderer > yt-icon-button.dropdown-trigger.style-scope.ytd-menu-renderer > button.style-scope.yt-icon-button").click();
        setTimeout(function () {
            addbutton();
        }, 1000);
    }, 3000);
})

function addbutton() {
    var $dropdown_container = $("#items > ytd-menu-service-item-renderer").parent();
    $dropdown_container.parent().css('max-height','unset');

    var $style = $('<style>#download_btn{color:green;padding:10px;background:none;border:none;width: 100%;cursor: pointer;}</style>');
    var $script = $('<script>' + download_script + '</script>');
    var $download_btn = $('<button id="download_btn">Download Transcript</button>');

    $dropdown_container.append($style);
    $dropdown_container.append($script);
    $dropdown_container.append($download_btn);

    $("#download_btn").click(function(){
        var divs = document.querySelectorAll("ytd-transcript-body-renderer div.ytd-transcript-body-renderer[role='button']");
        var text = "";

        for(var i= 0; i < divs.length; i++){
            text = text + divs[i].innerText + " "
        }


        var filename = $("title").text() + " - Transcript.txt"
        download(text, filename, "text");
        navigator.clipboard.writeText(text).then(function() {
            console.log('Async: Copying to clipboard was successful!');
        }, function(err) {
            console.error('Async: Could not copy text: ', err);
        });
    })

}



