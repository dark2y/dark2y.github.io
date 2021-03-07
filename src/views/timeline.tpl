{% set timeline = [
{
  "year": "2021",
  "lines": [
    "Since 2018 Alex has gone back to his entrepreneurial roots co-managing <a target='_blank' href='https://cybertech.ro'>Cybertech</a> and acting as full-time CTO with his old time friend Alexandru Anitei.",
    "Clients includes Forbes, Accenture, SocialBlueBook, Zara, The Financial Executive Network Group, others"
]},
{
  "year":"2017",
  "lines": [
    "During 2017 Alex went back to Romania and worked as a development consultant for Endava Ltd. During his time there he worked improving delivery on multiple fintech clients."
]},
{
  "year":"2015",
  "lines": [
    "Alex Neacsu left the entrepreneurial space and worked as a software architect for <b>Pionix Marketing Solution</b> assisting them develop a mobile startup called Raluz",
    "Later that year he moved to Dublin, Irland to join <b>Smartbox Ltd</b> as a Senior Software Engineer.",
    "During his time in Smartbox Ltd, Alex improved numerous processes including handling CRIT-1 Events and developed a new employes handbook."
]},
{
  "year": "2014",
  "lines": [
    "<b>Tomorrow Interactive</b> was incorporated into the Infinit Solutions Group, Alexandru became the Head of Development for Infinit Solutions before his departure in August of the same year."
]},
{
  "year":"2012",
  "lines": [
    "At the beginning of 2012, Alexandru moved to <b>Cybertech</b> where he contribuited as a Senior Software En",
    "Alex Neacsu started a <b>Tomorrow Interactive</b>, a small 'development boutique' specialized targeted mainly towards local advertising clients. During its short 2 years lifetime, the company developed for some renowned clients like Forbes, Gothaer, BRD, ING, Samsung, Honda, TVR, and many, many others."
]},
{
  "year": "2011",
  "lines": [
    "At the beginning of 2018, Alexandru developed a <a target='_blank' href='https://translate.google.ro/translate?hl=ro&sl=ro&tl=en&u=https%3A%2F%2Fwww.businessmagazin.ro%2Fbusiness-hi-tech%2Fsite-ul-saptamanii%2Fne-gasim-pe-mail-3515827'>social network search engine</a> that got him great media coverage",
    "Alex left the freelancing space and joined <b>Advanced Ideas</b> as an AS3 developer. While there, he worked on projects like Discount City, an online isometric game, as well as multiple advertising campaign websites for clients in the banking industry and Tabacco ( American Tabacco, Albalact, BT )."
]},
{
  "year":"2006",
  "lines": [
    "Alex Neacsu developed an early passion for programming and the computer world. He started offering professional web development services and computer programs at the age of 16, through his own company",
    "During this period Alex developed multiple products like the <b>Foursquare Maps</b>, an google chrome app with 1k+ downloads, Multiple 10k+ downloads plugins for WordPress"
]}  
]%}
<div id="timeline">
  {% for section in timeline | reverse %}
    <section class="year">
      <h3>{{ section.year }}</h3>
      {% for line in section.lines %}
        <section>
          <ul>
            <li>{{ line | safe  }}</li>
          </ul>
        </section>  
      {% endfor %}
    </section>
  {% endfor %}
</div>