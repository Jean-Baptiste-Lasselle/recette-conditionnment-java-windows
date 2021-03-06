﻿
// Load the SDK's source Asynchronously

(function (d, debug, element) {
    var js,
    id = 'facebook-jssdk',
    js = d.createElement(element);
    if (d.getElementById(id)) { return; }
    js.id = id;
    js.async = true;
    js.src = "//connect.facebook.net/en_US/all" + (debug ? "/debug" : "") + ".js";
    var count = d.getElementsByTagName(element);
    var s = d.getElementsByTagName(element)[count.length - 1];
    s.parentNode.insertBefore(js, s);
}(document, false,'script'));

(function (d,element) {
        var po = d.createElement(element);
        po.type = 'text/javascript';
        po.async = true;
        po.src = 'https://apis.google.com/js/plusone.js';
        var count = d.getElementsByTagName(element);
        var s = d.getElementsByTagName(element)[count.length - 1];
        s.parentNode.insertBefore(po, s);
    })(document,'script');

(function (d, t) {
    var g = d.createElement(t),
    count = d.getElementsByTagName(t),
    s = d.getElementsByTagName(t)[count.length - 1];
    g.src = '//platform.twitter.com/widgets.js';
    s.parentNode.insertBefore(g, s);
}(document, 'script'));


//(function (d, t) {
//    var g = d.createElement(t),
//        id='linkedInPlugin',
//        count = d.getElementsByTagName(t),
//        s = d.getElementsByTagName(t)[count.length - 1];
//        if (d.getElementById(id)) { return; }
        
//        g.id = id;
//        g.async = true;
//        g.src = '//platform.linkedin.com/in.js';
//        ss.parentNode.insertBefore(g, s);
//}(document, 'script'));


(function (document) {
    var script = document.createElement("script");
    var count = document.getElementsByTagName("script");
    var prior = document.getElementsByTagName("script")[count.length - 1];

    script.async = 1;
    prior.parentNode.insertBefore(script, prior);

    script.onload = script.onreadystatechange = function (_, isAbort) {
        if (isAbort || !script.readyState || /loaded|complete/.test(script.readyState)) {
            script.onload = script.onreadystatechange = null;
            script = undefined;

            if (!isAbort) {
                if(document.getElementById("HiddenLinkedInApiKey")!=null){
                    IN.init({ api_key: document.getElementById("HiddenLinkedInApiKey").value, authorize: true });
                }
            }
        }
    };
   script.src = 'https://platform.linkedin.com/in.js?async=true';
}(document));


window.fbAsyncInit = function () {
    // init the FB JS SDK
    FB.init({
        appId: document.getElementById('FBAppId').value, // App ID from the App Dashboard
        //channelUrl: "//connect.facebook.net/en_US/all.js", // Channel File for x-domain communication
        status: true, // check the login status upon init?
        version: 'v2.3',
        cookie: true, // set sessions cookies to allow your server to access the session?
        xfbml: true  // parse XFBML tags on this page?
    });
}


