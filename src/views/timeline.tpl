<div id="timeline">
  {% for section in timeline %}
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