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

    <script>
        function contact_me() {
            me = atob("aZGFyazJ5QGdtYWlsLmNvbQc".slice(1, -1));
            window.location.href = "mailto:" + me + "?Subject=Hello";
            return false;
        }
    </script>


</head>

<body>
    <div class="outer">
        <div class="container home markdown-body">
            <h1 class="title">
                <a href="http://alexneacsu.me/">Alexandru I. Neacsu</a>
                <small>
                    <i class="fas fa-qrcode"></i>{{ title }} in {{ location }}</small>
            </h1>

            <a href="#" onclick="return contact_me()" class="call-to-action">{{ callToAction }}<i class="fas fa-envelope"></i></a>

            <p>Alexandru Neacsu developed an early passion for programming and hi-tech world. He started offering professional web
                services and multimedia content through his own firm (SixAM) in 2009 and continued in 2011 to collaborate with
                several players on the digital market.</p>
            <p>He released numerous innovative products, among them mentioning the Foursquare Maps application and the popular social
                platform search engine Droopy6.</p>
            <p>He has several years’ tenure in management, including a senior-level position. During this time, he managed to build
                a vast network of experienced online professionals.</p>         
            
            <ul class="tags">
                {% for tag in tags %}
                    <li>#{{ tag }}</li>
                {% endfor %}
            </ul>
           
            <ul class="social-buttons">
                {% for link in links %}
                    <li>
                        <a href="{{ link.button[1] }}" target="_blank" class="button">
                            <i class="fab {{ link.button[0] }}"></i>
                            {{ link.title }}
                        </a>
                    </li>
                {% endfor %}
            </ul>

        </div>
    </div>
</body>

</html>