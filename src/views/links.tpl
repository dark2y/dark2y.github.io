<div class="section links">
    <ul class="social-buttons">
        <li>
            <a href="#" onclick="return contact_me()" target="_blank" class="button">
                <i class="fas fa-envelope"></i>
                Email
            </a>
        </li>
        {% for link in links %}
            <li>
                <a href="{{ link.button[1] }}" target="_blank" class="button">
                    <i class="{{ link.button[0] }}"></i>
                    {{ link.title }}
                </a>
            </li>
        {% endfor %}
    </ul>
</div>