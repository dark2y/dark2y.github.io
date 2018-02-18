<div class="section links">
    <ul class="social-buttons">
        <li>
            <a href="#" onclick="return contact_me()" target="_blank" class="button">
                <i class="fas fa-envelope"></i>
                <span class="label">Email</span>
            </a>
        </li>
        {% for link in links %}
            <li>
                <a href="{{ link.button[1] }}" target="_blank" class="button">
                    <i class="{{ link.button[0] }}"></i>
                    <span class="label">{{ link.title }}</span>
                </a>
            </li>
        {% endfor %}
    </ul>
</div>