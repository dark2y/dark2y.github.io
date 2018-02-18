{% set links = [
    {"title": "Linkedin", "button": ["fab fa-linkedin", "https://www.linkedin.com/in/alexandru-neacsu/"]},
    {"title": "Github", "button": ["fab fa-github", "https://github.com/dark2y"]},
    {"title": "Medium", "button": ["fab fa-medium", "https://medium.com/@dark2y"]},
    {"title": "AngelList", "button": ["fab fa-angellist", "https://angel.co/dark2y"] },
    {"title": "Twitter", "button": ["fab fa-twitter", "https://twitter.com/dark2y"]}
] %}

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