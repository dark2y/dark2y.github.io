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

            <div class="stats">
                <h2>Check out some of my stats!</h2>
                {% for stat in stats %}
                    <div id="s_{{ stat[0] }}" class="stat coffe">
                        {{ stat[1] }}
                        <span class="counter">
                            <b>0</b>
                            <i class="{{ stat[2] }}"></i>
                        </span>
                    </div>
                {% endfor %}
            </div>

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

    <script>
        
        function contact_me() {
            me = atob("aZGFyazJ5QGdtYWlsLmNvbQc".slice(1, -1));
            window.location.href = "mailto:" + me + "?Subject=Hello";
            return false;
        }

        function count_to(element,start_at,step,next){

            var element = document.getElementById("s_" + element);
            var label = element.getElementsByTagName("b")[0];
            var index = 0;

            element.style.opacity = 1;

            var interval = setInterval(function(){
                index += step;
                if(index <= start_at){
                    label.innerHTML = index.toLocaleString();
                } else {
                    label.innerHTML = start_at.toLocaleString();
                    clearInterval(interval);
                    index = 0;
                    label = null;
                    element = null;
                    if(next)
                        next(element,label,start_at);
                }
            }, 2)

           return;
            
        }

        count_to("coffe", 4380 * 2, 100, function(el,label,stats){
            count_to("code", 4380 * 50, 500, function(){
                    count_to("projects", (4380 * (1 / 30)), 1, function(){
                        count_to("keyboards", (4380 * (1 / 360)), 1, function(){
                             count_to("junior", (4380 * (1 / 7)), 1, function(){
                                 count_to("senior", (4380 * (1 / 11)), 1, function(){
                                    count_to("managers",(43800*30), 10, function(){
                                    });
                                 });
                            })
                        })
                    });
            });
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