<!DOCTYPE html>
<html lang="en">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">

    <title>{{ meta_title }}</title>
    <link rel="canonical" href="{{ meta_url }}">

    <meta name="HandheldFriendly" content="True"/>
    <meta name="MobileOptimized" content="320"/>
    <meta http-equiv="cleartype" content="on"/>

    {% include "views/seo.tpl" %}

    <link href="assets/css/app.css?v1.0" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900" rel="stylesheet">
    <script src="https://kit.fontawesome.com/50613e7ac3.js" crossorigin="anonymous"></script>

</head>

<body>

    <div class="outer">

        <div class="container">
            <h1 class="title">
                <a href="{{ meta_url }}">{{ title }}</a>
                <small>
                    <i class="fas fa-briefcase"></i>{{ tagline }}
                </small>
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