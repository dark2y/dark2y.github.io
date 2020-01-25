{% set timeline = [
      {
       "year":"2016",
       "lines": [
        "Alex Neacsu developed an early passion for programming and the computer world. He started offering professional 
        web development services and computer programs at the age of 16, through his own company SixAM.", 
        "During this period Alex develeloped multiple products like the Forsquare google maps integration app 
        for google chrome, Multiple 10k+ downloads plugins for wordpress and a 
        social network search engine that got him on great media covrage"
      ]},
      {
        "year": "2018",
        "lines": [
        "Alex left the freelancing space and joined Advanced Ideas as a AS3 / PHP developer. While there, he worked on projects like
         DiscountCity, an online isometric game, as well as multiple advertising campaign websites for clients in the 
         banking industry and tabacco ( Ammerican Tabbaco, Albalact, BT )."
      ]},
      {
        "year":"2012",
        "lines": [
        "Alex Neacsu started a Tomorrow Interactive, a small 'development butique' specialised targeted mainly twords local advertising clients. 
        During it's short 2 years lifetime, the company developed for some renowened clients like Forbes, Gothaer, BRD, 
        ING, Samsung, Honda, TVR and many, many others."
      ]},
      {
        "year": "2014",
        "lines": [
         "Tomorrow Interactive was incorportated in to the Infinit Solutions Group, Alexandru became the 
         Head of Development for Infinit Solutions before he's departure in August of the same year."
      ]},
      {
        "year":"2015",
        "lines": [
          "Alex Neacsu left the antreprenorial space and worked as a software architect for Pionix Marketing Solution 
          helping them develop a mobile chat application MVP",
          "Later that year he decided to moved to Dublin, Irland to join Smartbox Ltd as a Senior Software Enginere. During he's time in Smartbox Ltd, 
          Alex improved numerous procceses including handleing of CRIT-1 Events and developed a new employes handbook."
      ]},
      {
        "year":"2017",
        "lines": [
        "During 2017 Alex went back to Romania and worked as a development consultant for Endava Ltd. During he's time there he worked improving 
        delivery on multiple fintech clients."
      ]},
      {
        "year":"2018",
        "lines": [
        "Since 2018 Alex has went back to he's antreprenorial roots Co-Managing Cybertech SRL and acting as CTO and buisness"
      ]}
 ] %}

<div id="timeline">
  <div class="line-gk">
  {% for section in timeline %}
    <section class="year">
      <h3>{{ section.year }}</h3>
      {% for line in section.lines %}
        <section>
          <ul>
            <li>{{ line }}</li>
          </ul>
        </section>  
      {% endfor %}
    </section>
  {% endfor %}
  </div>
</div>