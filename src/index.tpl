<!DOCTYPE html>
<html lang="en">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">

    <meta name="HandheldFriendly" content="True"/>
    <meta name="MobileOptimized" content="320"/>
    <meta http-equiv="cleartype" content="on"/>

    {% include "views/meta.tpl" %}

    <link rel="canonical" href="http://alexneacsu.me/">
    
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">  
    <link href="assets/css/app.css?v={{ [1,2,3,4,5,6,7,8,9] | random }}" rel="stylesheet">

</head>

<body>
    <div class="outer">

        <div class="container home markdown-body">
        
            <h1 class="title">
                <a href="http://alexneacsu.me/">Alexandru I. Neacsu</a>
                <small>
                    <i class="fas fa-briefcase"></i>{{ title }} in {{ location }}</small>
            </h1>

             {# <a href="#" onclick="return contact_me()" class="call-to-action">Get in touch with me<i class="fas fa-envelope"></i></a> #}

             {% include "views/links.tpl" %}
             {% include "views/about.tpl" %}
             {% include "views/stats.tpl" %}

             {% include 'views/how-its-made.tpl' %}

        </div>


    </div>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-1253059-18"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-1253059-18');
    </script>

    <script>
        function contact_me() {
            me = atob("aZGFyazJ5QGdtYWlsLmNvbQc".slice(1, -1));
            window.location.href = "mailto:" + me + "?Subject=Hello";
            return false;
        }
    </script>

</body>

</html>