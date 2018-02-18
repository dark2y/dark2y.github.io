<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Alexandru I. Neacsu | {{ title }} in {{ location }}</title>
    <meta property="og:title" content="Alexandru I. Neacsu">
    <meta property="og:locale" content="en_US">
    <meta name="description" content="Buisness Consultant in Bucharest, Romania">
    <meta property="og:description" content="Buisness Consultant in Bucharest, Romania">
    <link rel="canonical" href="http://alexneacsu.me/">
    <meta property="og:url" content="http://alexneacsu.me/">
    <meta property="og:site_name" content="Alexandru I. Neacsu">
    
    <script type="application/ld+json">
        {"name":"Alexandru Neacsu",
        "description":"Consultant in Bucharest, Romania",
        "author":null,
        "@type":"WebSite",
        "url":"http://alexneacsu.me/",
        "image":null,"publisher":null,
        "headline":"Alexandru I. Neacsu",
        "dateModified":null,"datePublished":null,
        "sameAs":null,
        "mainEntityOfPage":null,
        "@context":"http://schema.org"}
    </script>

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
             {% include 'views/tags.tpl' %}
             {% include "views/stats.tpl" %}

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

</body>

</html>