<!DOCTYPE html>
<html lang="en">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">

    <title>{{ meta_title }}</title>
    <link rel="canonical" href="{{ meta_url }}">
    <link rel="manifest" href="/manifest.json">

    <meta name="theme-color" content="#ff3c3c"/>
    <meta name="HandheldFriendly" content="True"/>
    <meta name="MobileOptimized" content="320"/>
    <meta http-equiv="cleartype" content="on"/>

    {% include "views/seo.tpl" %}

    <link href="assets/css/app.css" rel="stylesheet">
    
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900" rel="stylesheet">


</head>

<body onscroll="scroll()">

    <div class="outer">

        <div class="container">
           
           <div class="header-wraper">

                <h1 class="title">
                    <a href="{{ meta_url }}">{{ title }}</a>
                    <small>
                        <i class="fas fa-briefcase"></i>{{ tagline }}
                    </small>
                </h1>

                {% include "views/links.tpl" %}
            
            </div>

             {% include "views/timeline.tpl" %}
             {% include "views/what-i-love.tpl" %}
             {% include "views/stats.tpl" %}

             {% include 'views/how-its-made.tpl' %}

        </div>

    </div>

    <div class="profile-photo"></div>
    
    <!-- PWA SW -->
    <script>
    
    if ('serviceWorker' in navigator) {
        window.addEventListener('load', function() {
                navigator.serviceWorker.register('/sw.js').then(function(registration) {
                console.log('ServiceWorker registration successful with scope: ', registration.scope);
            }, function(err) {
                console.log('ServiceWorker registration failed: ', err);
            });
        });
    }

    window.addEventListener('beforeinstallprompt', (event) => {
        event.preventDefault();
    });

    </script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-1253059-18"></script>

    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', 'UA-1253059-18');
    </script>


</body>

</html>