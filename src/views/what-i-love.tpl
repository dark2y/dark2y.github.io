{% set skills = {
    "Buisness Management & Architecture": [
        "Release Management","Client Service","Procedure Development",
        "Team Management", "Level I Client Support", "Agile", "Prototyping",
        "SEV 1 Issues", "System Architecture", "Design Patterns", "Software Architecture", 
        "Disaster Recovery"
    ],
    "Databases & Storage": [
        "MYSQL","MSSQL","MongoDB", "PostgressSQL", "Redis",
        "ElasticSearch", "MariaDB", "Influx DB", "Cloudsearch",
        "Varnish", "Memcached"
    ],
    "Programing Languages": [
        "PHP 5.x/7.x", "Oracle Apex","C","C#","Ruby","Python 3.x",
        "JavaScript", "Java 9", "Flash AS3", "Flash AS2", "Dart", "Go", "Ruby","Erlang",
        "C","C#", "Visual Basic", "Basic", "Pascal", "Vala", "*Bash","*VBS"
    ],
    "CMS / Frameworks / Libraries": [
        "Angular 1.x/6.x", "React / React Native", "Laravel",
        "Tree.js","Express", "D3.js", "Magento 1.x/2.x",
        "Symphony 2.x", "Flutter","Socket.io", "jQuery", "ExtJS",
        "Grunt / Gulp", "Ionic", "SASS/SCSS", "HTML5/CSS3", "Wordpress",
        "Jomla", "Drupal", "PhpBB", "WooComerce", "Flask", "Spring", "Django",
        "Bootstrap", "Skeleton", "Materialize", "Semantic UI"
    ],
    "Cloud Services": [
        "Amazon Cloud", "Azure", "Google Compute Engine", "Firebases"
    ],
    "Unix & OPS": [
        "TICK Stack","Grafana", "Portrainer",
        "Unix Development", "Production Stability",
        "ELK Stack","Kibana", "Logstash", "Jenkins","CI", "Nginx", "Apache", "Caddy",
        "Vagrant", "Docker", "Node-Red", "Unix Networks", "UFW", "Fail2Ban", "Bind",
        "ISP Config", "CPanel", "Supervisor", "Apache Maven", "Gradle", "CMake",
        "Apache Tomcat", "Oracle VirtualBox", "VMware Workstation", "QEMU"
    ],
    "Technologies": [
        "OAuth 2.0","SAML/SSO", "HTTP/2.x", "2 Factor Auth", "Unity", "Salesforce", 
        "HPHPc", "OpenVPN", "DNS","Certbot", "Authorize.net", "Google Material",
        "Google API", "Chatter Bots", "Stripe", "Paypal", "Apache Cordova", "NodeJS",
        "OCR", "DialogFlow", "XML/XSD", "UML", "Unit Testing", "Selenium/Katalon",
        "Postman", "Video Streaming", "Big Data", "IOT", "SSL/TLS", "GPT-3"
    ],
    "Source Control & Bug Tracking": [
        "Bitbucket","Git", "SVN", "GitHub", "GitFlow", "Gerrit",
        "Citrix", "Redmine", "Jira", "Confuence"
    ],
    "Communication": [
        "Slack", "HipChat"
    ]
} %}

<div id="what_i_love" class="section what-i-love">
    <h2 data-aos="fade-up" id="checkout">What I'm good at:</h2>
     <div class="skill-wraper">
     {% for index, category in skills %}
        <div data-aos="fade-up" class="cat-holder">
        <b class="category">{{index}}</b>
        {% for skil in category %}
            {% set font_size = [1.1,1.2] | random %}
            {% set color = ["","","","","","","","","", ""] | random %}
            <span style="font-size: {{ font_size }}em; opacity: 1" class="skill">
                <a title="Find out more about {{ skil }}" target="_blank" style="color:{{ color }};" href="http://www.google.com/search?q={{skil}}">{{ skil }}</a>
                {% if not loop.last %}
                    ,
                {% endif %}
            </span>
        {% endfor %}
        </div>
    {% endfor %}
        <li data-aos="fade-up" class="skill more">&#8230;
            <small> Seams like much, doesn't it ? This is what I expect when I read "CTO" on LinkedIn 😊️</small>
            {# <small>( Later Edit: having to list all of the skills above has made me realise I am a colossal nerd 🤓️ )</small> #}
        </li>
    </div>
</div>