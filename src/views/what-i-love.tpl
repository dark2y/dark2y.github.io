{% set skills = [
    ["Release Management"],["Account / Client Service"],["Procedure Development"],
    ["Jira"],["Confuence"],["Bitbucket"],["Level 1 Support"],["AWS EC2"],["AWS RDS"],
    ["Angular 1.x/6.x"],["React / React Native"],["Laravel"],["TICK Stack"],
    ["Grafana"],["NodeJS"],["C"],["C#"],["Ruby"],["Python 3.x"],
    ["Firebases"],["Influx DB"],["Maria DB"],["Salesforce"],["Oracle Apex"],["Java 9"],
    ["Docker"],["Portrainer"],["SysOPS"],["AGILE"],["Gerrit"],["JavaScript"],["D3.js"],
    ["Tree.js"],["Express"],["PHP 5.x/7.x"],["Magento 1.x/2.x"],["Grunt / Gulp"],["Web Requests"],
    ["Javascript"],["CSS"],["AWS Cloudsearch"],["Vagrant"],["ELK Stack"],["Kibana"],["MYSQL"],
    ["MSSQL"],["Gitflow"],["SASS/SCSS"],["Prototyping"],["Unix Development"],["SEV 1 Issues"],
    ["Production Stability"],["Disaster Recovery"],["Reporting"],["Elasticsearch"],
    ["Redis"],["Logstack"],["Git"],["MongoDB"],
    ["Ionic Framework"],["Cordova"],["Socket.io"],["Angular"],["System Architecture"],
    ["HTML5"],["Flash"],["Java 9x"],["Symphony 2.x"],["AS3"],["HTML"],["jQuery"],["Bash"],
    ["Networking"],["Cloud Architecture"],["GPT-3"],["Dart"],["Flutter"],["Go"],
    ["Advance Design Patterns"],["ExtJS"],["GitFlow"]
] %}

<div id="what_i_love" class="section what-i-love">
    <h2 id="checkout">What i'm good at:</h2>
     <ul class="skill-wraper">
        {% for skil in skills %}
            {% set font_size = [1.1,1.2,1.4,1.5] | random %}
            {% set color = ["","","","","","","","","", "#ff584f"] | random %}
            <li style="font-size: {{ font_size }}em; opacity: 1" class="skill">
                <a target="_blank" style="color:{{ color }};" href="http://www.google.com/search?q={{skil[0]}}">{{ skil[0] }}</a>
                {% if not loop.last %}
                    ,
                {% endif %}
            </li>
        {% endfor %}
        <li class="skill more">...</li>
    </ul>
</div>